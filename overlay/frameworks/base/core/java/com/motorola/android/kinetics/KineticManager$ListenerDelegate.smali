.class Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
.super Landroid/os/Binder;
.source "KineticManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/kinetics/KineticManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final mKineticEventListener:Lcom/motorola/android/kinetics/KineticEventListener;

.field private final mKineticList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/kinetics/Kinetic;",
            ">;"
        }
    .end annotation
.end field

.field public mKinetics:I

.field private mValuesPool:Lcom/motorola/android/kinetics/KineticEvent;

.field final synthetic this$0:Lcom/motorola/android/kinetics/KineticManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/kinetics/KineticManager;Lcom/motorola/android/kinetics/KineticEventListener;Lcom/motorola/android/kinetics/Kinetic;Landroid/os/Handler;)V
    .registers 7
    .parameter
    .parameter "listener"
    .parameter "kinetic"
    .parameter "handler"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->this$0:Lcom/motorola/android/kinetics/KineticManager;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKineticList:Ljava/util/ArrayList;

    .line 353
    iput-object p2, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKineticEventListener:Lcom/motorola/android/kinetics/KineticEventListener;

    .line 354
    if-eqz p4, :cond_20

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    .line 358
    .local v0, looper:Landroid/os/Looper;
    :goto_15
    new-instance v1, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate$1;-><init>(Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;Landroid/os/Looper;Lcom/motorola/android/kinetics/KineticManager;)V

    iput-object v1, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 366
    invoke-virtual {p0, p3}, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->addKinetic(Lcom/motorola/android/kinetics/Kinetic;)I

    .line 367
    return-void

    .line 354
    .end local v0           #looper:Landroid/os/Looper;
    :cond_20
    iget-object v1, p1, Lcom/motorola/android/kinetics/KineticManager;->mMainLooper:Landroid/os/Looper;

    move-object v0, v1

    goto :goto_15
.end method


# virtual methods
.method addKinetic(Lcom/motorola/android/kinetics/Kinetic;)I
    .registers 5
    .parameter "kinetic"

    .prologue
    .line 402
    iget v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKinetics:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/motorola/android/kinetics/Kinetic;->getHandle()I

    move-result v2

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKinetics:I

    .line 403
    iget-object v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKineticList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKinetics:I

    return v0
.end method

.method protected createKineticEvent()Lcom/motorola/android/kinetics/KineticEvent;
    .registers 3

    .prologue
    .line 371
    new-instance v0, Lcom/motorola/android/kinetics/KineticEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/motorola/android/kinetics/KineticEvent;-><init>(I)V

    return-object v0
.end method

.method protected getFromPool()Lcom/motorola/android/kinetics/KineticEvent;
    .registers 3

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, t:Lcom/motorola/android/kinetics/KineticEvent;
    monitor-enter p0

    .line 378
    :try_start_2
    iget-object v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mValuesPool:Lcom/motorola/android/kinetics/KineticEvent;

    .line 379
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mValuesPool:Lcom/motorola/android/kinetics/KineticEvent;

    .line 380
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_f

    .line 381
    if-nez v0, :cond_e

    .line 383
    invoke-virtual {p0}, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->createKineticEvent()Lcom/motorola/android/kinetics/KineticEvent;

    move-result-object v0

    .line 385
    :cond_e
    return-object v0

    .line 380
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method getKinetic()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/kinetics/Kinetic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKineticList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getListener()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKineticEventListener:Lcom/motorola/android/kinetics/KineticEventListener;

    return-object v0
.end method

.method hasKinetic(Lcom/motorola/android/kinetics/Kinetic;)Z
    .registers 5
    .parameter "kinetic"

    .prologue
    const/4 v2, 0x1

    .line 413
    iget v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKinetics:I

    invoke-virtual {p1}, Lcom/motorola/android/kinetics/Kinetic;->getHandle()I

    move-result v1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    move v0, v2

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method onKineticChangedLocked(Lcom/motorola/android/kinetics/Kinetic;[F[J)V
    .registers 12
    .parameter "kinetic"
    .parameter "values"
    .parameter "timestamp"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->getFromPool()Lcom/motorola/android/kinetics/KineticEvent;

    move-result-object v1

    .line 421
    .local v1, t:Lcom/motorola/android/kinetics/KineticEvent;
    iget-object v2, v1, Lcom/motorola/android/kinetics/KineticEvent;->values:[F

    .line 422
    .local v2, v:[F
    aget v3, p2, v5

    aput v3, v2, v5

    .line 423
    aget v3, p2, v4

    aput v3, v2, v4

    .line 424
    aget v3, p2, v6

    aput v3, v2, v6

    .line 425
    aget v3, p2, v7

    aput v3, v2, v7

    .line 426
    aget-wide v3, p3, v5

    iput-wide v3, v1, Lcom/motorola/android/kinetics/KineticEvent;->timestamp:J

    .line 427
    iput-object p1, v1, Lcom/motorola/android/kinetics/KineticEvent;->kinetic:Lcom/motorola/android/kinetics/Kinetic;

    .line 428
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 429
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 430
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 431
    iget-object v3, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 432
    return-void
.end method

.method removeKinetic(Lcom/motorola/android/kinetics/Kinetic;)I
    .registers 5
    .parameter "kinetic"

    .prologue
    .line 408
    iget v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKinetics:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/motorola/android/kinetics/Kinetic;->getHandle()I

    move-result v2

    shl-int/2addr v1, v2

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKinetics:I

    .line 409
    iget-object v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKineticList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 410
    iget v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKinetics:I

    return v0
.end method

.method protected returnToPool(Lcom/motorola/android/kinetics/KineticEvent;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 389
    monitor-enter p0

    .line 391
    :try_start_1
    iget-object v0, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mValuesPool:Lcom/motorola/android/kinetics/KineticEvent;

    if-nez v0, :cond_7

    .line 392
    iput-object p1, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mValuesPool:Lcom/motorola/android/kinetics/KineticEvent;

    .line 394
    :cond_7
    monitor-exit p0

    .line 395
    return-void

    .line 394
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method
