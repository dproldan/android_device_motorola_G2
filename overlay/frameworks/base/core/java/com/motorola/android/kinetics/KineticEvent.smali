.class public Lcom/motorola/android/kinetics/KineticEvent;
.super Ljava/lang/Object;
.source "KineticEvent.java"


# static fields
.field public static final INDEX_ACTIVITY_LEVEL:I = 0x0

.field public static final INDEX_AVG_STEPS:I = 0x1

.field public static final INDEX_AVG_TIMESTAMP:I = 0x2

.field public static final INDEX_GESTURE:I = 0x0

.field public static final INDEX_LOCATION_ACCURACY:I = 0x3

.field public static final INDEX_LOCATION_HEADING:I = 0x2

.field public static final INDEX_LOCATION_LATITUDE:I = 0x0

.field public static final INDEX_LOCATION_LONGITUDE:I = 0x1

.field public static final INDEX_PEDOMETER_ACTIVITY_TYPE:I = 0x3

.field public static final INDEX_PEDOMETER_DISTANCE:I = 0x1

.field public static final INDEX_PEDOMETER_SPEED:I = 0x2

.field public static final INDEX_PEDOMETER_STEPCOUNT:I = 0x0

.field public static final INDEX_SLEEP:I = 0x0

.field public static final INDEX_SLEEP_TIME:I = 0x1


# instance fields
.field public kinetic:Lcom/motorola/android/kinetics/Kinetic;

.field public timestamp:J

.field public final values:[F


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/motorola/android/kinetics/KineticEvent;->values:[F

    .line 138
    return-void
.end method
