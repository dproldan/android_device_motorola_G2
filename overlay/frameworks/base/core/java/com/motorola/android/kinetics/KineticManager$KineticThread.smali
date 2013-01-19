.class Lcom/motorola/android/kinetics/KineticManager$KineticThread;
.super Ljava/lang/Object;
.source "KineticManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/kinetics/KineticManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KineticThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;
    }
.end annotation


# instance fields
.field private mCurrentActivity:I

.field private mKineticService:Lcom/motorola/android/kinetics/IKineticService;

.field mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/motorola/android/kinetics/IKineticService;)V
    .registers 3
    .parameter "kineticService"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {}, Lcom/motorola/android/kinetics/KineticManager;->kinetics_data_init()I

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->mCurrentActivity:I

    .line 171
    iput-object p1, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    .line 172
    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/kinetics/KineticManager$KineticThread;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 161
    iget v0, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->mCurrentActivity:I

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/kinetics/KineticManager$KineticThread;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput p1, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->mCurrentActivity:I

    return p1
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 176
    invoke-static {}, Lcom/motorola/android/kinetics/KineticManager;->kinetics_data_uninit()I

    .line 177
    return-void
.end method

.method startLocked(Lcom/motorola/android/kinetics/IKineticService;)V
    .registers 7
    .parameter "service"

    .prologue
    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->mThread:Ljava/lang/Thread;

    if-nez v2, :cond_1f

    .line 183
    invoke-interface {p1}, Lcom/motorola/android/kinetics/IKineticService;->getDataChannel()Landroid/os/Bundle;

    move-result-object v0

    .line 184
    .local v0, dataChannel:Landroid/os/Bundle;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;

    invoke-direct {v3, p0, v0}, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;-><init>(Lcom/motorola/android/kinetics/KineticManager$KineticThread;Landroid/os/Bundle;)V

    const-class v4, Lcom/motorola/android/kinetics/KineticManager$KineticThread;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->mThread:Ljava/lang/Thread;

    .line 186
    iget-object v2, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 191
    .end local v0           #dataChannel:Landroid/os/Bundle;
    :cond_1f
    :goto_1f
    return-void

    .line 188
    :catch_20
    move-exception v2

    move-object v1, v2

    .line 189
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "KineticManager"

    const-string v3, "RemoteException in startLocked: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method
