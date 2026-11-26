.class public final Lio/appmetrica/analytics/impl/Qd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/Pd;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/appmetrica/analytics/impl/Pd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Pd;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/Qd;->a:Lio/appmetrica/analytics/impl/Pd;

    sget-object v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->UNKNOWN:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lb36;

    invoke-direct {v2, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;->CRASHPAD:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lb36;

    invoke-direct {v3, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/Qd;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/g6;)Lio/appmetrica/analytics/impl/Wd;
    .locals 0

    .line 57
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Wd;)Lio/appmetrica/analytics/impl/g6;
    .locals 4

    new-instance p0, Lio/appmetrica/analytics/impl/g6;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/g6;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lio/appmetrica/analytics/impl/g6;->f:I

    new-instance v0, Lio/appmetrica/analytics/impl/f6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/f6;-><init>()V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Wd;->a:[B

    iput-object v1, v0, Lio/appmetrica/analytics/impl/f6;->a:[B

    new-instance v1, Lio/appmetrica/analytics/impl/j6;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/j6;-><init>()V

    sget-object v2, Lio/appmetrica/analytics/impl/Qd;->b:Ljava/util/Map;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/Wd;->b:Lio/appmetrica/analytics/impl/Td;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/Td;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, v1, Lio/appmetrica/analytics/impl/j6;->a:I

    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Wd;->b:Lio/appmetrica/analytics/impl/Td;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Td;->b:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, v1, Lio/appmetrica/analytics/impl/j6;->b:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/f6;->b:Lio/appmetrica/analytics/impl/j6;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/g6;->g:Lio/appmetrica/analytics/impl/f6;

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Wd;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Qd;->a(Lio/appmetrica/analytics/impl/Wd;)Lio/appmetrica/analytics/impl/g6;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/g6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
