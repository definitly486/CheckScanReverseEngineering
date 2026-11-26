.class public final Lio/appmetrica/analytics/impl/E6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Qf;


# static fields
.field public static final b:Lio/appmetrica/analytics/impl/D6;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Qf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/D6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/D6;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/E6;->b:Lio/appmetrica/analytics/impl/D6;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 19
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/impl/E6;-><init>(Lio/appmetrica/analytics/impl/Qf;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Qf;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/appmetrica/analytics/impl/E6;->a:Lio/appmetrica/analytics/impl/Qf;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/Qf;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lio/appmetrica/analytics/impl/E6;->b:Lio/appmetrica/analytics/impl/D6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/impl/D6;->a()Lio/appmetrica/analytics/impl/Qf;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/E6;-><init>(Lio/appmetrica/analytics/impl/Qf;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lio/appmetrica/analytics/impl/E6;->a:Lio/appmetrica/analytics/impl/Qf;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qf;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    const-string v0, ":"

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/E6;->a:Lio/appmetrica/analytics/impl/Qf;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qf;->a()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lra8;->u(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_1
    :goto_0
    return v1
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/E6;->a:Lio/appmetrica/analytics/impl/Qf;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Qf;->a()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ":"

    invoke-static {p0, v1, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method
