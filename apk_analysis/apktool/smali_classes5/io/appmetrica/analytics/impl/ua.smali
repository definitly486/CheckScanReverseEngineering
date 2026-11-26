.class public final Lio/appmetrica/analytics/impl/ua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/we;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/im;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/im;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/ua;-><init>(Lio/appmetrica/analytics/impl/im;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/im;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ua;->a:Lio/appmetrica/analytics/impl/we;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/z4;)Lio/appmetrica/analytics/impl/Hm;
    .locals 2

    .line 41
    new-instance v0, Lio/appmetrica/analytics/impl/Hm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Hm;-><init>()V

    .line 42
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/z4;->b:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Hm;->b:Z

    .line 43
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/z4;->a:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Hm;->a:Z

    .line 44
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/z4;->c:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Hm;->c:Z

    .line 45
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/z4;->d:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Hm;->d:Z

    .line 46
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/z4;->e:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Hm;->e:Z

    .line 47
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->a:Lio/appmetrica/analytics/impl/we;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/z4;->f:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/we;->a(Ljava/lang/Boolean;)I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/Hm;->f:I

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Hm;)Lio/appmetrica/analytics/impl/z4;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/x4;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/x4;-><init>()V

    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Hm;->d:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/x4;->d:Z

    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Hm;->c:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/x4;->c:Z

    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Hm;->b:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/x4;->b:Z

    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Hm;->a:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/x4;->a:Z

    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Hm;->e:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/x4;->e:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ua;->a:Lio/appmetrica/analytics/impl/we;

    iget p1, p1, Lio/appmetrica/analytics/impl/Hm;->f:I

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/we;->a(I)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/x4;->f:Ljava/lang/Boolean;

    new-instance p0, Lio/appmetrica/analytics/impl/z4;

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/z4;-><init>(Lio/appmetrica/analytics/impl/x4;)V

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/z4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ua;->a(Lio/appmetrica/analytics/impl/z4;)Lio/appmetrica/analytics/impl/Hm;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Hm;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ua;->a(Lio/appmetrica/analytics/impl/Hm;)Lio/appmetrica/analytics/impl/z4;

    move-result-object p0

    return-object p0
.end method
