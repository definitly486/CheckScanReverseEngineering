.class public final Lio/appmetrica/analytics/impl/Rm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/impl/pm;

.field public final d:Lio/appmetrica/analytics/impl/Vl;

.field public final e:Lio/appmetrica/analytics/impl/xm;

.field public final f:Lio/appmetrica/analytics/impl/H4;

.field public final g:Lio/appmetrica/analytics/impl/um;

.field public final h:Lio/appmetrica/analytics/impl/Y7;

.field public final i:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

.field public final j:Lio/appmetrica/analytics/impl/N3;

.field public final k:Lio/appmetrica/analytics/impl/Q3;

.field public final l:Lio/appmetrica/analytics/impl/Yl;

.field public final m:Lio/appmetrica/analytics/impl/Hd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/pm;Lio/appmetrica/analytics/impl/Vl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Rm;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Rm;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Rm;->c:Lio/appmetrica/analytics/impl/pm;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/Rm;->d:Lio/appmetrica/analytics/impl/Vl;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p4

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/Fa;->A()Lio/appmetrica/analytics/impl/xm;

    move-result-object p4

    iput-object p4, p0, Lio/appmetrica/analytics/impl/Rm;->e:Lio/appmetrica/analytics/impl/xm;

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/xm;->a()Lio/appmetrica/analytics/impl/vm;

    move-result-object p4

    new-instance v0, Lio/appmetrica/analytics/impl/H4;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/H4;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rm;->f:Lio/appmetrica/analytics/impl/H4;

    new-instance v0, Lio/appmetrica/analytics/impl/um;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/um;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rm;->g:Lio/appmetrica/analytics/impl/um;

    new-instance v0, Lio/appmetrica/analytics/impl/Y7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Y7;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rm;->h:Lio/appmetrica/analytics/impl/Y7;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rm;->i:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->f()Lio/appmetrica/analytics/impl/N3;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rm;->j:Lio/appmetrica/analytics/impl/N3;

    new-instance v0, Lio/appmetrica/analytics/impl/Q3;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Q3;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rm;->k:Lio/appmetrica/analytics/impl/Q3;

    new-instance v0, Lio/appmetrica/analytics/impl/Yl;

    new-instance v1, Lio/appmetrica/analytics/impl/qm;

    invoke-direct {v1, p1, p2}, Lio/appmetrica/analytics/impl/qm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1, p4, p3}, Lio/appmetrica/analytics/impl/Yl;-><init>(Lio/appmetrica/analytics/impl/qm;Lio/appmetrica/analytics/impl/vm;Lio/appmetrica/analytics/impl/pm;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Rm;->l:Lio/appmetrica/analytics/impl/Yl;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->q()Lio/appmetrica/analytics/impl/Hd;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Rm;->m:Lio/appmetrica/analytics/impl/Hd;

    return-void
.end method
