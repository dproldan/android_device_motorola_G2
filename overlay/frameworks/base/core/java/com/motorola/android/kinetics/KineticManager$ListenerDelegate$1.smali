.class Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "KineticManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;-><init>(Lcom/motorola/android/kinetics/KineticManager;Lcom/motorola/android/kinetics/KineticEventListener;Lcom/motorola/android/kinetics/Kinetic;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;

.field final synthetic val$this$0:Lcom/motorola/android/kinetics/KineticManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;Landroid/os/Looper;Lcom/motorola/android/kinetics/KineticManager;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate$1;->this$1:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;

    iput-object p3, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate$1;->val$this$0:Lcom/motorola/android/kinetics/KineticManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 361
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/kinetics/KineticEvent;

    .line 362
    .local v0, t:Lcom/motorola/android/kinetics/KineticEvent;
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate$1;->this$1:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;

    iget-object v1, v1, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->mKineticEventListener:Lcom/motorola/android/kinetics/KineticEventListener;

    invoke-interface {v1, v0}, Lcom/motorola/android/kinetics/KineticEventListener;->onKineticChanged(Lcom/motorola/android/kinetics/KineticEvent;)V

    .line 363
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate$1;->this$1:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;

    invoke-virtual {v1, v0}, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->returnToPool(Lcom/motorola/android/kinetics/KineticEvent;)V

    .line 364
    return-void
.end method
