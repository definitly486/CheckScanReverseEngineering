.class public final Lio/appmetrica/analytics/impl/rc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Tg;

.field public final b:Lio/appmetrica/analytics/impl/D9;

.field public final c:Lio/appmetrica/analytics/impl/A4;

.field public final d:Lio/appmetrica/analytics/impl/jf;

.field public final e:Lio/appmetrica/analytics/impl/Y4;

.field public final f:Lio/appmetrica/analytics/impl/Jc;

.field public final g:Lcl4;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/Tg;Lio/appmetrica/analytics/impl/D9;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/jf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/rc;->a:Lio/appmetrica/analytics/impl/Tg;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/rc;->b:Lio/appmetrica/analytics/impl/D9;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/rc;->c:Lio/appmetrica/analytics/impl/A4;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/rc;->d:Lio/appmetrica/analytics/impl/jf;

    new-instance p3, Lio/appmetrica/analytics/impl/Y4;

    invoke-direct {p3, p1, p2}, Lio/appmetrica/analytics/impl/Y4;-><init>(Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/Tg;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/rc;->e:Lio/appmetrica/analytics/impl/Y4;

    new-instance p1, Lio/appmetrica/analytics/impl/Jc;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Jc;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/rc;->f:Lio/appmetrica/analytics/impl/Jc;

    new-instance p1, Lio/appmetrica/analytics/impl/qc;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/qc;-><init>(Lio/appmetrica/analytics/impl/rc;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/rc;->g:Lcl4;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/rc;)Lio/appmetrica/analytics/impl/Tg;
    .locals 0

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/rc;->a:Lio/appmetrica/analytics/impl/Tg;

    return-object p0
.end method

.method public static final synthetic b(Lio/appmetrica/analytics/impl/rc;)Lio/appmetrica/analytics/impl/D9;
    .locals 0

    .line 25
    iget-object p0, p0, Lio/appmetrica/analytics/impl/rc;->b:Lio/appmetrica/analytics/impl/D9;

    return-object p0
.end method

.method public static final synthetic c(Lio/appmetrica/analytics/impl/rc;)Lio/appmetrica/analytics/impl/A4;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rc;->c:Lio/appmetrica/analytics/impl/A4;

    return-object p0
.end method

.method public static final synthetic d(Lio/appmetrica/analytics/impl/rc;)Lio/appmetrica/analytics/impl/Jc;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rc;->f:Lio/appmetrica/analytics/impl/Jc;

    return-object p0
.end method

.method public static final synthetic e(Lio/appmetrica/analytics/impl/rc;)Lio/appmetrica/analytics/impl/jf;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rc;->d:Lio/appmetrica/analytics/impl/jf;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/R8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rc;->e:Lio/appmetrica/analytics/impl/Y4;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Y4;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/R8;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/rc;->e:Lio/appmetrica/analytics/impl/Y4;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Y4;->c:Lio/appmetrica/analytics/impl/Rc;

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rc;->g:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/R8;

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
