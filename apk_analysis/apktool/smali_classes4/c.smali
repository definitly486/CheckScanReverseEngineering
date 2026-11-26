.class public final Lc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# static fields
.field public static final b:[C

.field public static final c:Lc;

.field public static d:Lhg4;

.field public static final synthetic e:Lc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc;->b:[C

    new-instance v0, Lc;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc;->c:Lc;

    new-instance v0, Lc;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc;->e:Lc;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method


# virtual methods
.method public synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/location/zzcg;->a:Lcom/google/android/gms/common/api/Api$ClientKey;

    const/4 p0, 0x0

    return-object p0
.end method
