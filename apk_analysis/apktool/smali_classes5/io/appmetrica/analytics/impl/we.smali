.class public abstract Lio/appmetrica/analytics/impl/we;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/appmetrica/analytics/impl/we;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lio/appmetrica/analytics/impl/we;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lio/appmetrica/analytics/impl/we;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)I
    .locals 1

    if-nez p1, :cond_0

    iget p0, p0, Lio/appmetrica/analytics/impl/we;->a:I

    return p0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lio/appmetrica/analytics/impl/we;->b:I

    return p0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p0, p0, Lio/appmetrica/analytics/impl/we;->c:I

    return p0

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0
.end method

.method public final a(I)Ljava/lang/Boolean;
    .locals 1

    .line 32
    iget v0, p0, Lio/appmetrica/analytics/impl/we;->b:I

    if-ne p1, v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 33
    :cond_0
    iget p0, p0, Lio/appmetrica/analytics/impl/we;->c:I

    if-ne p1, p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
