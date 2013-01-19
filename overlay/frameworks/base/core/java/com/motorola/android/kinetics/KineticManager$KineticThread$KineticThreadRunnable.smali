.class Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;
.super Ljava/lang/Object;
.source "KineticManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/kinetics/KineticManager$KineticThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KineticThreadRunnable"
.end annotation


# instance fields
.field private mDataChannel:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/motorola/android/kinetics/KineticManager$KineticThread;


# direct methods
.method constructor <init>(Lcom/motorola/android/kinetics/KineticManager$KineticThread;Landroid/os/Bundle;)V
    .registers 3
    .parameter
    .parameter "dataChannel"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->this$0:Lcom/motorola/android/kinetics/KineticManager$KineticThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    .line 197
    return-void
.end method

.method private open()Z
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v11, "KineticManager"

    .line 200
    iget-object v7, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    if-nez v7, :cond_1d

    .line 201
    const-string v7, "KineticManager"

    const-string v7, "mDataChannel == NULL, exiting"

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v7, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 203
    :try_start_12
    iget-object v8, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->this$0:Lcom/motorola/android/kinetics/KineticManager$KineticThread;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->mThread:Ljava/lang/Thread;

    .line 204
    monitor-exit v7

    .line 205
    const/4 v7, 0x0

    .line 238
    :goto_19
    return v7

    .line 204
    :catchall_1a
    move-exception v8

    monitor-exit v7
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v8

    .line 209
    :cond_1d
    iget-object v7, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    const-string v8, "fds"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    .line 211
    .local v6, pfds:[Landroid/os/Parcelable;
    if-eqz v6, :cond_3a

    .line 212
    array-length v4, v6

    .line 213
    .local v4, length:I
    new-array v1, v4, [Ljava/io/FileDescriptor;

    .line 214
    .local v1, fds:[Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2b
    if-ge v2, v4, :cond_3b

    .line 215
    aget-object v5, v6, v2

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 216
    .local v5, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    aput-object v7, v1, v2

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 219
    .end local v1           #fds:[Ljava/io/FileDescriptor;
    .end local v2           #i:I
    .end local v4           #length:I
    .end local v5           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_3a
    const/4 v1, 0x0

    .line 221
    .restart local v1       #fds:[Ljava/io/FileDescriptor;
    :cond_3b
    iget-object v7, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    const-string v8, "ints"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 223
    .local v3, ints:[I
    invoke-static {v1, v3}, Lcom/motorola/android/kinetics/KineticManager;->kinetics_data_open([Ljava/io/FileDescriptor;[I)I

    .line 224
    if-eqz v6, :cond_60

    .line 228
    :try_start_48
    array-length v7, v6

    sub-int v2, v7, v9

    .restart local v2       #i:I
    :goto_4b
    if-ltz v2, :cond_60

    .line 229
    aget-object v5, v6, v2

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 230
    .restart local v5       #pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_54} :catch_57

    .line 228
    add-int/lit8 v2, v2, -0x1

    goto :goto_4b

    .line 232
    .end local v2           #i:I
    .end local v5           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_57
    move-exception v7

    move-object v0, v7

    .line 234
    .local v0, e:Ljava/io/IOException;
    const-string v7, "KineticManager"

    const-string v7, "IOException: "

    invoke-static {v11, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v0           #e:Ljava/io/IOException;
    :cond_60
    iput-object v10, p0, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->mDataChannel:Landroid/os/Bundle;

    move v7, v9

    .line 238
    goto :goto_19
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 243
    const/4 v11, 0x4

    new-array v10, v11, [F

    .line 244
    .local v10, values:[F
    const/4 v11, 0x1

    new-array v8, v11, [I

    .line 245
    .local v8, status:[I
    const/4 v11, 0x1

    new-array v9, v11, [J

    .line 246
    .local v9, timestamp:[J
    const/4 v11, -0x4

    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->open()Z

    move-result v11

    if-nez v11, :cond_15

    .line 339
    :goto_13
    return-void

    .line 337
    .local v4, kinetic:I
    .local v5, kineticObject:Lcom/motorola/android/kinetics/Kinetic;
    :cond_14
    :try_start_14
    monitor-exit v11
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_37

    .line 254
    .end local v4           #kinetic:I
    .end local v5           #kineticObject:Lcom/motorola/android/kinetics/Kinetic;
    :cond_15
    invoke-static {v10, v8, v9}, Lcom/motorola/android/kinetics/KineticManager;->kinetics_data_poll([F[I[J)I

    move-result v4

    .line 256
    .restart local v4       #kinetic:I
    sget-object v11, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v11

    .line 257
    const/4 v12, -0x1

    if-eq v4, v12, :cond_27

    :try_start_1f
    sget-object v12, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3a

    .line 258
    :cond_27
    const/4 v12, -0x1

    if-ne v4, v12, :cond_2a

    .line 265
    :cond_2a
    invoke-static {}, Lcom/motorola/android/kinetics/KineticManager;->kinetics_data_close()I

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->this$0:Lcom/motorola/android/kinetics/KineticManager$KineticThread;

    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->mThread:Ljava/lang/Thread;

    .line 267
    monitor-exit v11

    goto :goto_13

    .line 337
    :catchall_37
    move-exception v12

    monitor-exit v11
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_37

    throw v12

    .line 269
    :cond_3a
    :try_start_3a
    sget-object v12, Lcom/motorola/android/kinetics/KineticManager;->sHandleToKinetic:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/kinetics/Kinetic;

    .line 270
    .restart local v5       #kineticObject:Lcom/motorola/android/kinetics/Kinetic;
    if-eqz v5, :cond_14

    .line 281
    invoke-virtual {v5}, Lcom/motorola/android/kinetics/Kinetic;->getType()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_6b

    .line 283
    const/4 v12, 0x0

    aget v12, v10, v12

    float-to-int v12, v12

    const/4 v13, 0x1

    sub-int v1, v12, v13

    .line 284
    .local v1, gesture_type:I
    const/16 v12, 0xa

    if-ne v1, v12, :cond_ab

    .line 285
    const-string v12, "KineticManager"

    const-string v13, "Broadcasting intent for Tap Gesture"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.motorola.gault.kinetic.GESTURE_TAP"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v3, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/motorola/android/kinetics/KineticManager;->access$000()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    .end local v1           #gesture_type:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6b
    :goto_6b
    invoke-virtual {v5}, Lcom/motorola/android/kinetics/Kinetic;->getType()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8e

    .line 317
    const/4 v12, 0x2

    aget v12, v10, v12

    const/high16 v13, 0x4396

    rem-float/2addr v12, v13

    const/high16 v13, 0x4316

    cmpl-float v12, v12, v13

    if-lez v12, :cond_151

    .line 318
    const/4 v12, 0x2

    aget v13, v10, v12

    const/high16 v14, 0x4396

    const/4 v15, 0x2

    aget v15, v10, v15

    const/high16 v16, 0x4396

    rem-float v15, v15, v16

    sub-float/2addr v14, v15

    add-float/2addr v13, v14

    aput v13, v10, v12

    .line 325
    :cond_8e
    :goto_8e
    sget-object v12, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 326
    .local v7, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_95
    if-ge v2, v7, :cond_14

    .line 327
    sget-object v12, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;

    .line 328
    .local v6, listener:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    invoke-virtual {v6, v5}, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->hasKinetic(Lcom/motorola/android/kinetics/Kinetic;)Z

    move-result v12

    if-eqz v12, :cond_a8

    .line 332
    invoke-virtual {v6, v5, v10, v9}, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->onKineticChangedLocked(Lcom/motorola/android/kinetics/Kinetic;[F[J)V

    .line 326
    :cond_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 289
    .end local v2           #i:I
    .end local v6           #listener:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .end local v7           #size:I
    .restart local v1       #gesture_type:I
    :cond_ab
    const/16 v12, 0xb

    if-ne v1, v12, :cond_c5

    .line 290
    const-string v12, "KineticManager"

    const-string v13, "Broadcasting intent for Any Motion Gesture"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.motorola.gault.kinetic.OFF_MODE_RECOVERY"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/motorola/android/kinetics/KineticManager;->access$000()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6b

    .line 294
    .end local v3           #intent:Landroid/content/Intent;
    :cond_c5
    const/16 v12, 0xc

    if-ne v1, v12, :cond_e4

    .line 295
    const-string v12, "KineticManager"

    const-string v13, "Broadcasting intent for Screen on Gesture"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Lcom/motorola/android/kinetics/KineticManager;->access$100()Landroid/os/PowerManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v12

    if-nez v12, :cond_6b

    .line 298
    invoke-static {}, Lcom/motorola/android/kinetics/KineticManager;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    const-wide/16 v13, 0xbb8

    invoke-virtual {v12, v13, v14}, Landroid/os/PowerManager$WakeLock;->acquireRemoveCallbacks(J)V

    goto :goto_6b

    .line 301
    :cond_e4
    const/16 v12, 0xe

    if-ne v1, v12, :cond_ff

    .line 302
    const-string v12, "KineticManager"

    const-string v13, "Broadcasting intent for calibration complete"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.motorola.gault.kinetic.CALIBRATION_COMPLETE"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/motorola/android/kinetics/KineticManager;->access$000()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6b

    .line 307
    .end local v3           #intent:Landroid/content/Intent;
    :cond_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->this$0:Lcom/motorola/android/kinetics/KineticManager$KineticThread;

    move-object v12, v0

    invoke-static {v12}, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->access$300(Lcom/motorola/android/kinetics/KineticManager$KineticThread;)I

    move-result v12

    if-eq v12, v1, :cond_6b

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->this$0:Lcom/motorola/android/kinetics/KineticManager$KineticThread;

    move-object v12, v0

    invoke-static {v12, v1}, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->access$302(Lcom/motorola/android/kinetics/KineticManager$KineticThread;I)I

    .line 309
    const-string v12, "KineticManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Broadcasting intent for Activity Change "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->this$0:Lcom/motorola/android/kinetics/KineticManager$KineticThread;

    move-object v14, v0

    invoke-static {v14}, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->access$300(Lcom/motorola/android/kinetics/KineticManager$KineticThread;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.motorola.gault.kinetic.ACTIVITY_CHANGE"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v12, "KINETIC_ACTIVITY_TYPE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/kinetics/KineticManager$KineticThread$KineticThreadRunnable;->this$0:Lcom/motorola/android/kinetics/KineticManager$KineticThread;

    move-object v13, v0

    invoke-static {v13}, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->access$300(Lcom/motorola/android/kinetics/KineticManager$KineticThread;)I

    move-result v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    invoke-static {}, Lcom/motorola/android/kinetics/KineticManager;->access$000()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6b

    .line 319
    .end local v1           #gesture_type:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_151
    const/4 v12, 0x2

    aget v12, v10, v12

    const/high16 v13, 0x4396

    rem-float/2addr v12, v13

    const/high16 v13, 0x4316

    cmpg-float v12, v12, v13

    if-gez v12, :cond_8e

    .line 320
    const/4 v12, 0x2

    aget v13, v10, v12

    const/4 v14, 0x2

    aget v14, v10, v14

    const/high16 v15, 0x4396

    rem-float/2addr v14, v15

    sub-float/2addr v13, v14

    aput v13, v10, v12
    :try_end_169
    .catchall {:try_start_3a .. :try_end_169} :catchall_37

    goto/16 :goto_8e
.end method
