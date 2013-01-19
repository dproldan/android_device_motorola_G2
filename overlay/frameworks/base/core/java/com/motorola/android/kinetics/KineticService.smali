.class public Lcom/motorola/android/kinetics/KineticService;
.super Lcom/motorola/android/kinetics/IKineticService$Stub;
.source "KineticService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/kinetics/KineticService$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KINETIC_DISABLE:I = -0x1

.field static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/kinetics/KineticService$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/motorola/android/kinetics/KineticService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/kinetics/KineticService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/motorola/android/kinetics/IKineticService$Stub;-><init>()V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    .line 96
    sput-object p1, Lcom/motorola/android/kinetics/KineticService;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_init()I

    .line 98
    return-void
.end method

.method private static native _kinetics_control_activate(IZ)Z
.end method

.method private static native _kinetics_control_erase_calibration()Z
.end method

.method private static native _kinetics_control_get_calibration_status()I
.end method

.method private static native _kinetics_control_init()I
.end method

.method private static native _kinetics_control_open()Landroid/os/Bundle;
.end method

.method private static native _kinetics_control_request_update(I)Z
.end method

.method private static native _kinetics_control_set_activity_mode(Z)Z
.end method

.method private static native _kinetics_control_set_calibration_speed(II)Z
.end method

.method private static native _kinetics_control_set_calibration_status(Z)Z
.end method

.method private static native _kinetics_control_set_delay(II)Z
.end method

.method private static native _kinetics_control_set_equipment_type(B)Z
.end method

.method private static native _kinetics_control_set_screen_on_gesture_status(Z)Z
.end method

.method private static native _kinetics_control_set_sleep_analysis(B)Z
.end method

.method private static native _kinetics_control_set_user_caltable([C)Z
.end method

.method private static native _kinetics_control_set_user_distance(II)Z
.end method

.method private static native _kinetics_control_set_userprofile(IIII)Z
.end method

.method private static native _kinetics_control_wake()I
.end method


# virtual methods
.method public calibrate(ID)Z
    .registers 6
    .parameter "activity"
    .parameter "speed"

    .prologue
    .line 113
    const-wide/high16 v0, 0x4024

    mul-double/2addr v0, p2

    double-to-int v0, v0

    invoke-static {p1, v0}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_set_calibration_speed(II)Z

    move-result v0

    return v0
.end method

.method public calibrationStatus(Z)Z
    .registers 3
    .parameter "status"

    .prologue
    .line 118
    invoke-static {p1}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_set_calibration_status(Z)Z

    move-result v0

    return v0
.end method

.method deactivateIfUnused(I)V
    .registers 5
    .parameter "kinetic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v2, p0, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 269
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_1b

    .line 270
    iget-object v2, p0, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/kinetics/KineticService$Listener;

    invoke-virtual {v2, p1}, Lcom/motorola/android/kinetics/KineticService$Listener;->hasKinetic(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 274
    :goto_17
    return-void

    .line 269
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 273
    :cond_1b
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_activate(IZ)Z

    goto :goto_17
.end method

.method public enableKinetic(Landroid/os/IBinder;Ljava/lang/String;IIB)Z
    .registers 16
    .parameter "binder"
    .parameter "name"
    .parameter "kinetic"
    .parameter "delay"
    .parameter "equipmentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 174
    .local v5, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 176
    .local v1, identity:J
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    if-nez p1, :cond_37

    .line 179
    sget-object v6, Lcom/motorola/android/kinetics/KineticService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "listener is null (kinetic="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v6, 0x0

    .line 264
    :goto_36
    return v6

    .line 183
    :cond_37
    iget-object v6, p0, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 184
    const/4 v7, -0x1

    if-eq p4, v7, :cond_60

    const/4 v7, 0x1

    :try_start_3e
    invoke-static {p3, v7}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_activate(IZ)Z

    move-result v7

    if-nez v7, :cond_60

    .line 185
    sget-object v7, Lcom/motorola/android/kinetics/KineticService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could not enable Kinetic "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v7, 0x0

    monitor-exit v6

    move v6, v7

    goto :goto_36

    .line 190
    :cond_60
    const/4 v3, 0x0

    .line 194
    .local v3, l:Lcom/motorola/android/kinetics/KineticService$Listener;
    iget-object v7, p0, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_67
    :goto_67
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/kinetics/KineticService$Listener;

    .line 195
    .local v4, listener:Lcom/motorola/android/kinetics/KineticService$Listener;
    iget-object v7, v4, Lcom/motorola/android/kinetics/KineticService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v7, :cond_67

    .line 196
    move-object v3, v4

    goto :goto_67

    .line 200
    .end local v4           #listener:Lcom/motorola/android/kinetics/KineticService$Listener;
    :cond_79
    if-nez v3, :cond_cd

    const/4 v7, -0x1

    if-eq p4, v7, :cond_cd

    .line 208
    new-instance v3, Lcom/motorola/android/kinetics/KineticService$Listener;

    .end local v3           #l:Lcom/motorola/android/kinetics/KineticService$Listener;
    invoke-direct {v3, p0, p1}, Lcom/motorola/android/kinetics/KineticService$Listener;-><init>(Lcom/motorola/android/kinetics/KineticService;Landroid/os/IBinder;)V

    .line 210
    .restart local v3       #l:Lcom/motorola/android/kinetics/KineticService$Listener;
    if-nez v3, :cond_bc

    .line 211
    sget-object v7, Lcom/motorola/android/kinetics/KineticService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listener with binder "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", failed registration (kinetic="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v7, 0x0

    monitor-exit v6

    move v6, v7

    goto/16 :goto_36

    .line 216
    :cond_bc
    const/4 v7, 0x0

    invoke-interface {p1, v3, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 217
    iget-object v7, p0, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v7, p0, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 220
    invoke-virtual {v3, p3, p4}, Lcom/motorola/android/kinetics/KineticService$Listener;->addKinetic(II)V

    .line 226
    :cond_cd
    const/4 v7, -0x1

    if-ne p4, v7, :cond_126

    .line 230
    if-nez v3, :cond_109

    .line 231
    sget-object v7, Lcom/motorola/android/kinetics/KineticService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listener with binder "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", failed deregistration (kinetic="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v7, 0x0

    monitor-exit v6

    move v6, v7

    goto/16 :goto_36

    .line 240
    :cond_109
    invoke-virtual {v3, p3}, Lcom/motorola/android/kinetics/KineticService$Listener;->removeKinetic(I)V

    .line 241
    invoke-virtual {p0, p3}, Lcom/motorola/android/kinetics/KineticService;->deactivateIfUnused(I)V

    .line 242
    iget v7, v3, Lcom/motorola/android/kinetics/KineticService$Listener;->mKinetics:I

    if-nez v7, :cond_126

    .line 243
    const v7, 0x7fffffff

    iput v7, v3, Lcom/motorola/android/kinetics/KineticService$Listener;->mDelay:I

    .line 244
    iget-object v7, p0, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    const/4 v7, 0x0

    invoke-interface {p1, v3, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 246
    iget-object v7, p0, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 257
    :cond_126
    invoke-static {p5}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_set_equipment_type(B)Z

    .line 258
    invoke-static {p3, p4}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_set_delay(II)Z

    .line 260
    iget-object v7, p0, Lcom/motorola/android/kinetics/KineticService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_137

    .line 261
    invoke-static {}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_wake()I

    .line 263
    :cond_137
    monitor-exit v6

    .line 264
    const/4 v6, 0x1

    goto/16 :goto_36

    .line 263
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #l:Lcom/motorola/android/kinetics/KineticService$Listener;
    :catchall_13b
    move-exception v7

    monitor-exit v6
    :try_end_13d
    .catchall {:try_start_3e .. :try_end_13d} :catchall_13b

    throw v7
.end method

.method public eraseCalibration()Z
    .registers 2

    .prologue
    .line 128
    invoke-static {}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_erase_calibration()Z

    move-result v0

    return v0
.end method

.method public getCalibrationStatus()I
    .registers 2

    .prologue
    .line 123
    invoke-static {}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_get_calibration_status()I

    move-result v0

    return v0
.end method

.method public getDataChannel()Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_open()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public requestUpdate(I)Z
    .registers 3
    .parameter "kinetic"

    .prologue
    .line 150
    invoke-static {p1}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_request_update(I)Z

    move-result v0

    return v0
.end method

.method public setActivity(Z)Z
    .registers 3
    .parameter "inactivity"

    .prologue
    .line 145
    invoke-static {p1}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_set_activity_mode(Z)Z

    move-result v0

    return v0
.end method

.method public setScreenOnGestureStatus(Z)Z
    .registers 5
    .parameter "status"

    .prologue
    .line 154
    sget-object v0, Lcom/motorola/android/kinetics/KineticService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set screen on gesture status to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p1}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_set_screen_on_gesture_status(Z)Z

    move-result v0

    return v0
.end method

.method public setUserCalibrationTable([C)Z
    .registers 3
    .parameter "table"

    .prologue
    .line 139
    invoke-static {p1}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_set_user_caltable([C)Z

    move-result v0

    return v0
.end method

.method public setUserCorrectedDistance(II)Z
    .registers 4
    .parameter "mspdistance"
    .parameter "userdistance"

    .prologue
    .line 133
    invoke-static {p1, p2}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_set_user_distance(II)Z

    move-result v0

    return v0
.end method

.method public setUserProfile(IIII)Z
    .registers 6
    .parameter "age"
    .parameter "sex"
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 107
    invoke-static {p1, p2, p3, p4}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_set_userprofile(IIII)Z

    move-result v0

    return v0
.end method

.method public sleepAnalysis(B)Z
    .registers 3
    .parameter "onoff"

    .prologue
    .line 161
    invoke-static {p1}, Lcom/motorola/android/kinetics/KineticService;->_kinetics_control_set_sleep_analysis(B)Z

    move-result v0

    return v0
.end method
