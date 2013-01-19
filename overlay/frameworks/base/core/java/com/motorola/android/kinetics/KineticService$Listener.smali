.class final Lcom/motorola/android/kinetics/KineticService$Listener;
.super Ljava/lang/Object;
.source "KineticService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/kinetics/KineticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Listener"
.end annotation


# instance fields
.field mDelay:I

.field mKinetics:I

.field final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/motorola/android/kinetics/KineticService;


# direct methods
.method constructor <init>(Lcom/motorola/android/kinetics/KineticService;Landroid/os/IBinder;)V
    .registers 4
    .parameter
    .parameter "token"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->this$0:Lcom/motorola/android/kinetics/KineticService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->mKinetics:I

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->mDelay:I

    .line 53
    iput-object p2, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->mToken:Landroid/os/IBinder;

    .line 54
    return-void
.end method


# virtual methods
.method addKinetic(II)V
    .registers 5
    .parameter "Kinetic"
    .parameter "delay"

    .prologue
    .line 57
    iget v0, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->mKinetics:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->mKinetics:I

    .line 58
    iget v0, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->mDelay:I

    if-le v0, p2, :cond_d

    .line 59
    iput p2, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->mDelay:I

    .line 60
    :cond_d
    return-void
.end method

.method public binderDied()V
    .registers 6

    .prologue
    .line 72
    iget-object v2, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->this$0:Lcom/motorola/android/kinetics/KineticService;

    iget-object v2, v2, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 73
    :try_start_5
    iget-object v3, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->this$0:Lcom/motorola/android/kinetics/KineticService;

    iget-object v3, v3, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object v3, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 77
    const/4 v1, 0x0

    .local v1, kinetic:I
    :goto_13
    const/16 v3, 0x20

    if-ge v1, v3, :cond_39

    iget v3, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->mKinetics:I

    if-eqz v3, :cond_39

    .line 78
    invoke-virtual {p0, v1}, Lcom/motorola/android/kinetics/KineticService$Listener;->hasKinetic(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 79
    invoke-virtual {p0, v1}, Lcom/motorola/android/kinetics/KineticService$Listener;->removeKinetic(I)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_36

    .line 81
    :try_start_24
    iget-object v3, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->this$0:Lcom/motorola/android/kinetics/KineticService;

    invoke-virtual {v3, v1}, Lcom/motorola/android/kinetics/KineticService;->deactivateIfUnused(I)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_36
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2c

    .line 77
    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 82
    :catch_2c
    move-exception v3

    move-object v0, v3

    .line 83
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2e
    sget-object v3, Lcom/motorola/android/kinetics/KineticService;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException in binderDied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 88
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #kinetic:I
    :catchall_36
    move-exception v3

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_36

    throw v3

    .line 87
    .restart local v1       #kinetic:I
    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->this$0:Lcom/motorola/android/kinetics/KineticService;

    iget-object v3, v3, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 88
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_36

    .line 89
    return-void
.end method

.method hasKinetic(I)Z
    .registers 5
    .parameter "Kinetic"

    .prologue
    const/4 v2, 0x1

    .line 67
    iget v0, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->mKinetics:I

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    move v0, v2

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method removeKinetic(I)V
    .registers 4
    .parameter "Kinetic"

    .prologue
    .line 63
    iget v0, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->mKinetics:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/android/kinetics/KineticService$Listener;->mKinetics:I

    .line 64
    return-void
.end method
