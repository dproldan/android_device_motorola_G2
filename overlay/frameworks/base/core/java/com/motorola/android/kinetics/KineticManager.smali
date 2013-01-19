.class public Lcom/motorola/android/kinetics/KineticManager;
.super Ljava/lang/Object;
.source "KineticManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;,
        Lcom/motorola/android/kinetics/KineticManager$KineticThread;
    }
.end annotation


# static fields
.field public static final ELLIPTICAL:B = 0x2t

.field public static final KINETICS_ACTIVITYLEVEL:I = 0x3

.field public static final KINETICS_GESTURE:I = 0x4

.field public static final KINETICS_LOCATION:I = 0x2

.field public static final KINETICS_PEDOMETER:I = 0x1

.field public static final KINETICS_SLEEP:I = 0x5

.field public static final KINETIC_ACTIVITY_CHANGE:Ljava/lang/String; = "com.motorola.gault.kinetic.ACTIVITY_CHANGE"

.field public static final KINETIC_ACTIVITY_TYPE:Ljava/lang/String; = "KINETIC_ACTIVITY_TYPE"

.field public static final KINETIC_CALIBRATION_COMPLETE:I = 0xe

.field private static final KINETIC_DISABLE:I = -0x1

.field private static final KINETIC_ENABLE:I = 0x1

.field public static final KINETIC_GESTURE_CALIBRATION_COMPLETE:Ljava/lang/String; = "com.motorola.gault.kinetic.CALIBRATION_COMPLETE"

.field public static final KINETIC_GESTURE_OFF_MODE_RECOVERY:Ljava/lang/String; = "com.motorola.gault.kinetic.OFF_MODE_RECOVERY"

.field public static final KINETIC_GESTURE_SCREEN_ON:Ljava/lang/String; = "com.motorola.gault.kinetic.GESTURE_SCREEN_ON"

.field public static final KINETIC_GESTURE_TAP:Ljava/lang/String; = "com.motorola.gault.kinetic.GESTURE_TAP"

.field public static final KINETIC_JOG:I = 0x2

.field public static final KINETIC_OFF_MODE_RECOVERY:I = 0xb

.field public static final KINETIC_RUN:I = 0x3

.field public static final KINETIC_SCREEN_ON:I = 0xc

.field public static final KINETIC_SERVICE:Ljava/lang/String; = "kinetics"

.field public static final KINETIC_STILL:I = 0x0

.field public static final KINETIC_TAP:I = 0xa

.field public static final KINETIC_WALK:I = 0x1

.field public static final NONE:B = 0x0t

.field public static final STAIR_MASTER:B = 0x3t

.field private static final TAG:Ljava/lang/String; = "KineticManager"

.field public static final TREADMILL:B = 0x1t

.field private static mContext:Landroid/content/Context;

.field private static mPM:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sFullKineticsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/kinetics/Kinetic;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToKinetic:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/motorola/android/kinetics/Kinetic;",
            ">;"
        }
    .end annotation
.end field

.field private static sKineticListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/kinetics/Kinetic;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sKineticModuleInitialized:Z

.field private static sKineticThread:Lcom/motorola/android/kinetics/KineticManager$KineticThread;

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mKineticService:Lcom/motorola/android/kinetics/IKineticService;

.field mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/android/kinetics/KineticManager;->sKineticModuleInitialized:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/android/kinetics/KineticManager;->sFullKineticsList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/motorola/android/kinetics/KineticManager;->sKineticListByType:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/motorola/android/kinetics/KineticManager;->sHandleToKinetic:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 10
    .parameter "mainLooper"
    .parameter "context"

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    const-string v3, "kinetics"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/kinetics/IKineticService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/kinetics/IKineticService;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    .line 442
    iput-object p1, p0, Lcom/motorola/android/kinetics/KineticManager;->mMainLooper:Landroid/os/Looper;

    .line 443
    sput-object p2, Lcom/motorola/android/kinetics/KineticManager;->mContext:Landroid/content/Context;

    .line 444
    const-string/jumbo v3, "power"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    sput-object v3, Lcom/motorola/android/kinetics/KineticManager;->mPM:Landroid/os/PowerManager;

    .line 445
    sget-object v3, Lcom/motorola/android/kinetics/KineticManager;->mPM:Landroid/os/PowerManager;

    const v4, 0x1000001a

    const-string v5, "ScreenGesture"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/motorola/android/kinetics/KineticManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 446
    sget-object v3, Lcom/motorola/android/kinetics/KineticManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 448
    sget-object v3, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 449
    :try_start_34
    sget-boolean v4, Lcom/motorola/android/kinetics/KineticManager;->sKineticModuleInitialized:Z

    if-nez v4, :cond_90

    .line 450
    const/4 v4, 0x1

    sput-boolean v4, Lcom/motorola/android/kinetics/KineticManager;->sKineticModuleInitialized:Z

    .line 452
    invoke-static {}, Lcom/motorola/android/kinetics/KineticManager;->nativeClassInit()V

    .line 456
    invoke-static {}, Lcom/motorola/android/kinetics/KineticManager;->kinetics_module_init()I

    .line 458
    sget-object v0, Lcom/motorola/android/kinetics/KineticManager;->sFullKineticsList:Ljava/util/ArrayList;

    .line 459
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/kinetics/Kinetic;>;"
    const/4 v1, 0x0

    .line 461
    .local v1, i:I
    :cond_44
    new-instance v2, Lcom/motorola/android/kinetics/Kinetic;

    invoke-direct {v2}, Lcom/motorola/android/kinetics/Kinetic;-><init>()V

    .line 462
    .local v2, kinetic:Lcom/motorola/android/kinetics/Kinetic;
    invoke-static {v2, v1}, Lcom/motorola/android/kinetics/KineticManager;->kinetics_module_get_next_kinetic(Lcom/motorola/android/kinetics/Kinetic;I)I

    move-result v1

    .line 464
    if-ltz v1, :cond_85

    .line 465
    const-string v4, "KineticManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found kinetic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/motorola/android/kinetics/Kinetic;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", handle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/motorola/android/kinetics/Kinetic;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v4, Lcom/motorola/android/kinetics/KineticManager;->sHandleToKinetic:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/motorola/android/kinetics/Kinetic;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 471
    :cond_85
    if-gtz v1, :cond_44

    .line 473
    new-instance v4, Lcom/motorola/android/kinetics/KineticManager$KineticThread;

    iget-object v5, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    invoke-direct {v4, v5}, Lcom/motorola/android/kinetics/KineticManager$KineticThread;-><init>(Lcom/motorola/android/kinetics/IKineticService;)V

    sput-object v4, Lcom/motorola/android/kinetics/KineticManager;->sKineticThread:Lcom/motorola/android/kinetics/KineticManager$KineticThread;

    .line 475
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/kinetics/Kinetic;>;"
    .end local v1           #i:I
    .end local v2           #kinetic:Lcom/motorola/android/kinetics/Kinetic;
    :cond_90
    monitor-exit v3

    .line 476
    return-void

    .line 475
    :catchall_92
    move-exception v4

    monitor-exit v3
    :try_end_94
    .catchall {:try_start_34 .. :try_end_94} :catchall_92

    throw v4
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/motorola/android/kinetics/KineticManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/PowerManager;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/motorola/android/kinetics/KineticManager;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/motorola/android/kinetics/KineticManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static native kinetics_data_close()I
.end method

.method static native kinetics_data_init()I
.end method

.method static native kinetics_data_open([Ljava/io/FileDescriptor;[I)I
.end method

.method static native kinetics_data_poll([F[I[J)I
.end method

.method static native kinetics_data_uninit()I
.end method

.method private static native kinetics_module_get_next_kinetic(Lcom/motorola/android/kinetics/Kinetic;I)I
.end method

.method private static native kinetics_module_init()I
.end method

.method private static native nativeClassInit()V
.end method

.method private registerListener(Lcom/motorola/android/kinetics/KineticEventListener;Lcom/motorola/android/kinetics/Kinetic;Landroid/os/Handler;IB)Z
    .registers 25
    .parameter "listener"
    .parameter "kinetic"
    .parameter "handler"
    .parameter "delay"
    .parameter "equipmentType"

    .prologue
    .line 793
    if-nez p1, :cond_b

    .line 794
    const-string v5, "KineticManager"

    const-string v6, "Have failed condition in registerListener listner: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v5, 0x0

    .line 835
    :goto_a
    return v5

    .line 797
    :cond_b
    if-nez p2, :cond_16

    .line 798
    const-string v5, "KineticManager"

    const-string v6, "Have failed condition in registerListener kinetic : "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v5, 0x0

    goto :goto_a

    .line 804
    :cond_16
    :try_start_16
    sget-object v15, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v15
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_9b

    .line 805
    const/4 v6, 0x0

    .line 806
    .local v6, l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    :try_start_1a
    sget-object v5, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_20
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_aa

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;

    .line 807
    .local v16, i:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_98

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_20

    .line 808
    move-object/from16 v6, v16

    move-object v10, v6

    .line 812
    .end local v6           #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .end local v16           #i:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .local v10, l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    :goto_38
    :try_start_38
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/android/kinetics/Kinetic;->getName()Ljava/lang/String;

    move-result-object v7

    .line 813
    .local v7, name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/android/kinetics/Kinetic;->getHandle()I

    move-result v8

    .line 814
    .local v8, handle:I
    if-nez v10, :cond_7f

    .line 815
    new-instance v6, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;-><init>(Lcom/motorola/android/kinetics/KineticManager;Lcom/motorola/android/kinetics/KineticEventListener;Lcom/motorola/android/kinetics/Kinetic;Landroid/os/Handler;)V
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_a7

    .line 816
    .end local v10           #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .restart local v6       #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    :try_start_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    move-object v5, v0

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-interface/range {v5 .. v10}, Lcom/motorola/android/kinetics/IKineticService;->enableKinetic(Landroid/os/IBinder;Ljava/lang/String;IIB)Z

    move-result v18

    .line 817
    .local v18, result:Z
    if-eqz v18, :cond_69

    .line 818
    sget-object v5, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    sget-object v5, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 821
    :cond_69
    sget-object v5, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7b

    .line 822
    sget-object v5, Lcom/motorola/android/kinetics/KineticManager;->sKineticThread:Lcom/motorola/android/kinetics/KineticManager$KineticThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    move-object v7, v0

    .end local v7           #name:Ljava/lang/String;
    invoke-virtual {v5, v7}, Lcom/motorola/android/kinetics/KineticManager$KineticThread;->startLocked(Lcom/motorola/android/kinetics/IKineticService;)V

    .line 830
    :cond_7b
    :goto_7b
    monitor-exit v15
    :try_end_7c
    .catchall {:try_start_50 .. :try_end_7c} :catchall_98

    .end local v6           #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .end local v8           #handle:I
    .end local v17           #i$:Ljava/util/Iterator;
    :goto_7c
    move/from16 v5, v18

    .line 835
    goto :goto_a

    .line 825
    .end local v18           #result:Z
    .restart local v7       #name:Ljava/lang/String;
    .restart local v8       #handle:I
    .restart local v10       #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_7f
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    move-object v9, v0

    move-object v11, v7

    move v12, v8

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-interface/range {v9 .. v14}, Lcom/motorola/android/kinetics/IKineticService;->enableKinetic(Landroid/os/IBinder;Ljava/lang/String;IIB)Z

    move-result v18

    .line 826
    .restart local v18       #result:Z
    if-eqz v18, :cond_96

    .line 827
    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->addKinetic(Lcom/motorola/android/kinetics/Kinetic;)I
    :try_end_96
    .catchall {:try_start_7f .. :try_end_96} :catchall_a7

    :cond_96
    move-object v6, v10

    .end local v10           #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .restart local v6       #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    goto :goto_7b

    .line 830
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #handle:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #result:Z
    :catchall_98
    move-exception v5

    :goto_99
    :try_start_99
    monitor-exit v15
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    :try_start_9a
    throw v5
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_9b} :catch_9b

    .line 831
    .end local v6           #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    :catch_9b
    move-exception v5

    move-object v15, v5

    .line 832
    .local v15, e:Landroid/os/RemoteException;
    const-string v5, "KineticManager"

    const-string v6, "RemoteException in registerListener: "

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 833
    const/16 v18, 0x0

    .restart local v18       #result:Z
    goto :goto_7c

    .line 830
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v18           #result:Z
    .restart local v10       #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .restart local v17       #i$:Ljava/util/Iterator;
    :catchall_a7
    move-exception v5

    move-object v6, v10

    .end local v10           #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .restart local v6       #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    goto :goto_99

    :cond_aa
    move-object v10, v6

    .end local v6           #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .restart local v10       #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    goto :goto_38
.end method

.method private unregisterListener(Ljava/lang/Object;)V
    .registers 15
    .parameter "listener"

    .prologue
    const-string v12, "KineticManager"

    .line 842
    if-nez p1, :cond_c

    .line 843
    const-string v0, "KineticManager"

    const-string v0, "Have failed condition in unregisterListener:"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_b
    return-void

    .line 847
    :cond_c
    :try_start_c
    sget-object v11, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_4d

    .line 848
    :try_start_f
    sget-object v0, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 849
    .local v10, size:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_16
    if-ge v7, v10, :cond_5c

    .line 850
    sget-object v0, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;

    .line 851
    .local v1, l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    invoke-virtual {v1}, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_5e

    .line 853
    invoke-virtual {v1}, Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;->getKinetic()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/android/kinetics/Kinetic;

    .line 854
    .local v9, kinetic:Lcom/motorola/android/kinetics/Kinetic;
    invoke-virtual {v9}, Lcom/motorola/android/kinetics/Kinetic;->getName()Ljava/lang/String;

    move-result-object v2

    .line 855
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/motorola/android/kinetics/Kinetic;->getHandle()I

    move-result v3

    .line 856
    .local v3, handle:I
    iget-object v0, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/motorola/android/kinetics/IKineticService;->enableKinetic(Landroid/os/IBinder;Ljava/lang/String;IIB)Z

    goto :goto_2e

    .line 862
    .end local v1           #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #handle:I
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #kinetic:Lcom/motorola/android/kinetics/Kinetic;
    .end local v10           #size:I
    :catchall_4a
    move-exception v0

    monitor-exit v11
    :try_end_4c
    .catchall {:try_start_f .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v0
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4d} :catch_4d

    .line 863
    :catch_4d
    move-exception v0

    move-object v6, v0

    .line 864
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "KineticManager"

    const-string v0, "RemoteException in unregisterListener: "

    invoke-static {v12, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 858
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v1       #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .restart local v7       #i:I
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #size:I
    :cond_57
    :try_start_57
    sget-object v0, Lcom/motorola/android/kinetics/KineticManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 862
    .end local v1           #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_5c
    monitor-exit v11
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_4a

    goto :goto_b

    .line 849
    .restart local v1       #l:Lcom/motorola/android/kinetics/KineticManager$ListenerDelegate;
    :cond_5e
    add-int/lit8 v7, v7, 0x1

    goto :goto_16
.end method


# virtual methods
.method public calibrate(ID)Z
    .registers 9
    .parameter "activity"
    .parameter "speed"

    .prologue
    const-string v4, "KineticManager"

    .line 675
    :try_start_2
    const-string v1, "KineticManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In kinetic manger calibrate for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    invoke-interface {v1, p1, p2, p3}, Lcom/motorola/android/kinetics/IKineticService;->calibrate(ID)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_29} :catch_2b

    move-result v1

    .line 679
    :goto_2a
    return v1

    .line 677
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 678
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KineticManager"

    const-string v1, "RemoteException in calibrate: "

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public endCalibration()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "KineticManager"

    .line 636
    :try_start_3
    const-string v1, "KineticManager"

    const-string v2, "In kinetic manger end calibration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/motorola/android/kinetics/IKineticService;->calibrationStatus(Z)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_12

    move-result v1

    .line 640
    :goto_11
    return v1

    .line 638
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 639
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KineticManager"

    const-string v1, "RemoteException in end calibration: "

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 640
    goto :goto_11
.end method

.method public eraseCalibration()Z
    .registers 5

    .prologue
    const-string v3, "KineticManager"

    .line 710
    :try_start_2
    const-string v1, "KineticManager"

    const-string v2, "Erase Calibration\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    invoke-interface {v1}, Lcom/motorola/android/kinetics/IKineticService;->eraseCalibration()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 714
    :goto_f
    return v1

    .line 712
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 713
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KineticManager"

    const-string v1, "RemoteException in eraseCalibration "

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getCalibrationStatus()I
    .registers 5

    .prologue
    const-string v3, "KineticManager"

    .line 695
    :try_start_2
    const-string v1, "KineticManager"

    const-string v2, "In kinetic manger get calibration status\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    invoke-interface {v1}, Lcom/motorola/android/kinetics/IKineticService;->getCalibrationStatus()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 699
    :goto_f
    return v1

    .line 697
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 698
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KineticManager"

    const-string v1, "RemoteException in getCalibrationStatus "

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getDefaultKinetic(I)Lcom/motorola/android/kinetics/Kinetic;
    .registers 4
    .parameter "type"

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/motorola/android/kinetics/KineticManager;->getKineticList(I)Ljava/util/List;

    move-result-object v0

    .line 554
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/kinetics/Kinetic;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .end local p0
    :goto_b
    return-object v1

    .restart local p0
    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/android/kinetics/Kinetic;

    move-object v1, p0

    goto :goto_b
.end method

.method public getKinetic()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    const/4 v3, 0x0

    .line 486
    .local v3, result:I
    sget-object v0, Lcom/motorola/android/kinetics/KineticManager;->sFullKineticsList:Ljava/util/ArrayList;

    .line 487
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/kinetics/Kinetic;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/kinetics/Kinetic;

    .line 488
    .local v1, i:Lcom/motorola/android/kinetics/Kinetic;
    invoke-virtual {v1}, Lcom/motorola/android/kinetics/Kinetic;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_2c

    goto :goto_7

    .line 490
    :pswitch_1b
    or-int/lit8 v3, v3, 0x1

    .line 491
    goto :goto_7

    .line 493
    :pswitch_1e
    or-int/lit8 v3, v3, 0x2

    .line 494
    goto :goto_7

    .line 496
    :pswitch_21
    or-int/lit8 v3, v3, 0x3

    .line 497
    goto :goto_7

    .line 499
    :pswitch_24
    or-int/lit8 v3, v3, 0x4

    .line 500
    goto :goto_7

    .line 502
    :pswitch_27
    or-int/lit8 v3, v3, 0x5

    goto :goto_7

    .line 506
    .end local v1           #i:Lcom/motorola/android/kinetics/Kinetic;
    :cond_2a
    return v3

    .line 488
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method public getKineticList(I)Ljava/util/List;
    .registers 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/kinetics/Kinetic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    sget-object v0, Lcom/motorola/android/kinetics/KineticManager;->sFullKineticsList:Ljava/util/ArrayList;

    .line 522
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/kinetics/Kinetic;>;"
    monitor-enter v0

    .line 523
    :try_start_3
    sget-object v4, Lcom/motorola/android/kinetics/KineticManager;->sKineticListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 524
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/kinetics/Kinetic;>;"
    if-nez v3, :cond_1a

    .line 525
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1c

    .line 526
    move-object v3, v0

    .line 534
    :cond_11
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 535
    sget-object v4, Lcom/motorola/android/kinetics/KineticManager;->sKineticListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 537
    :cond_1a
    monitor-exit v0

    .line 538
    return-object v3

    .line 528
    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/kinetics/Kinetic;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/kinetics/Kinetic;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/kinetics/Kinetic;

    .line 530
    .local v1, i:Lcom/motorola/android/kinetics/Kinetic;
    invoke-virtual {v1}, Lcom/motorola/android/kinetics/Kinetic;->getType()I

    move-result v4

    if-ne v4, p1, :cond_25

    .line 531
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 537
    .end local v1           #i:Lcom/motorola/android/kinetics/Kinetic;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/kinetics/Kinetic;>;"
    :catchall_3b
    move-exception v4

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v4
.end method

.method public registerListener(Lcom/motorola/android/kinetics/KineticEventListener;Lcom/motorola/android/kinetics/Kinetic;I)Z
    .registers 10
    .parameter "listener"
    .parameter "kinetic"
    .parameter "delay"

    .prologue
    .line 558
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/kinetics/KineticManager;->registerListener(Lcom/motorola/android/kinetics/KineticEventListener;Lcom/motorola/android/kinetics/Kinetic;Landroid/os/Handler;IB)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lcom/motorola/android/kinetics/KineticEventListener;Lcom/motorola/android/kinetics/Kinetic;IB)Z
    .registers 11
    .parameter "listener"
    .parameter "kinetic"
    .parameter "delay"
    .parameter "equipmentType"

    .prologue
    .line 562
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/kinetics/KineticManager;->registerListener(Lcom/motorola/android/kinetics/KineticEventListener;Lcom/motorola/android/kinetics/Kinetic;Landroid/os/Handler;IB)Z

    move-result v0

    return v0
.end method

.method public requestUpdate(Lcom/motorola/android/kinetics/Kinetic;)Z
    .registers 5
    .parameter "kinetic"

    .prologue
    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    invoke-virtual {p1}, Lcom/motorola/android/kinetics/Kinetic;->getType()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/motorola/android/kinetics/IKineticService;->requestUpdate(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 656
    :goto_a
    return v1

    .line 654
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 655
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KineticManager"

    const-string v2, "RemoteException in request update: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setActivity(Z)Z
    .registers 5
    .parameter "inActivity"

    .prologue
    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    invoke-interface {v1, p1}, Lcom/motorola/android/kinetics/IKineticService;->setActivity(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 604
    :goto_6
    return v1

    .line 602
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 603
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KineticManager"

    const-string v2, "RemoteException in setActivity: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setScreenOnGestureStatus(Z)Z
    .registers 5
    .parameter "status"

    .prologue
    .line 750
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    invoke-interface {v1, p1}, Lcom/motorola/android/kinetics/IKineticService;->setScreenOnGestureStatus(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 753
    :goto_6
    return v1

    .line 751
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 752
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KineticManager"

    const-string v2, "RemoteException in setScreenOnGestureStatus "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setUserCorrectedDistance(II)Z
    .registers 8
    .parameter "mspdistance"
    .parameter "userdistance"

    .prologue
    const-string v4, "KineticManager"

    .line 731
    :try_start_2
    const-string v1, "KineticManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In kinetic manager in get corrected distance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "corrected with"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    invoke-interface {v1, p1, p2}, Lcom/motorola/android/kinetics/IKineticService;->setUserCorrectedDistance(II)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_29} :catch_2b

    move-result v1

    .line 735
    :goto_2a
    return v1

    .line 733
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 734
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KineticManager"

    const-string v1, "RemoteException in setUserCorrectedDistance "

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public setUserProfile(IIII)Z
    .registers 8
    .parameter "age"
    .parameter "sex"
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/motorola/android/kinetics/IKineticService;->setUserProfile(IIII)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 585
    :goto_6
    return v1

    .line 583
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 584
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KineticManager"

    const-string v2, "RemoteException in setUserProfile: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public sleepAnalysis(B)Z
    .registers 5
    .parameter "onoff"

    .prologue
    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    invoke-interface {v1, p1}, Lcom/motorola/android/kinetics/IKineticService;->sleepAnalysis(B)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 772
    :goto_6
    return v1

    .line 770
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 771
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KineticManager"

    const-string v2, "RemoteException in sleepAnalysis "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startCalibration()Z
    .registers 5

    .prologue
    const-string v3, "KineticManager"

    .line 618
    :try_start_2
    const-string v1, "KineticManager"

    const-string v2, "In kinetic manger start calibration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v1, p0, Lcom/motorola/android/kinetics/KineticManager;->mKineticService:Lcom/motorola/android/kinetics/IKineticService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/motorola/android/kinetics/IKineticService;->calibrationStatus(Z)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_11

    move-result v1

    .line 622
    :goto_10
    return v1

    .line 620
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 621
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "KineticManager"

    const-string v1, "RemoteException in start calibration: "

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public unregisterListener(Lcom/motorola/android/kinetics/KineticEventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 839
    invoke-direct {p0, p1}, Lcom/motorola/android/kinetics/KineticManager;->unregisterListener(Ljava/lang/Object;)V

    .line 840
    return-void
.end method
