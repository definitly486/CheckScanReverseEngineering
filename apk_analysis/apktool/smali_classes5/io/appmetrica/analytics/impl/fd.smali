.class public final Lio/appmetrica/analytics/impl/fd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ob;

.field public final b:Lio/appmetrica/analytics/impl/jd;

.field public final c:Lio/appmetrica/analytics/impl/w9;

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Ob;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->h()Lio/appmetrica/analytics/impl/jf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Ob;-><init>(Lio/appmetrica/analytics/impl/Nl;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/fd;->a:Lio/appmetrica/analytics/impl/Ob;

    new-instance v0, Lio/appmetrica/analytics/impl/jd;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->h()Lio/appmetrica/analytics/impl/jf;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lio/appmetrica/analytics/impl/jd;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Nl;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/fd;->b:Lio/appmetrica/analytics/impl/jd;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->l()Lio/appmetrica/analytics/impl/w9;

    move-result-object p2

    iput-object p2, p0, Lio/appmetrica/analytics/impl/fd;->c:Lio/appmetrica/analytics/impl/w9;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->a()Lio/appmetrica/analytics/impl/b5;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/b5;->d()Z

    move-result p2

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/fd;->d:Z

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->a()Lio/appmetrica/analytics/impl/b5;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/b5;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/fd;->e:Ljava/lang/String;

    return-void
.end method
