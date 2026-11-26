.class public final Lxm9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxm9$h;
    }
.end annotation


# static fields
.field public static volatile i:Lxm9;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lfh8;

.field public final c:Lfh8;

.field public final d:Lfh8;

.field public final e:Lfh8;

.field public final f:Lfh8;

.field public final g:Lfh8;

.field public final h:Lfh8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxm9;->a:Landroid/content/Context;

    new-instance p1, Lxm9$f;

    invoke-direct {p1, p0}, Lxm9$f;-><init>(Lxm9;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lxm9;->b:Lfh8;

    new-instance p1, Lxm9$a;

    invoke-direct {p1, p0}, Lxm9$a;-><init>(Lxm9;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lxm9;->c:Lfh8;

    new-instance p1, Lxm9$g;

    invoke-direct {p1, p0}, Lxm9$g;-><init>(Lxm9;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lxm9;->d:Lfh8;

    new-instance p1, Lxm9$b;

    invoke-direct {p1, p0}, Lxm9$b;-><init>(Lxm9;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lxm9;->e:Lfh8;

    new-instance p1, Lxm9$c;

    invoke-direct {p1, p0}, Lxm9$c;-><init>(Lxm9;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lxm9;->f:Lfh8;

    new-instance p1, Lxm9$e;

    invoke-direct {p1, p0}, Lxm9$e;-><init>(Lxm9;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lxm9;->g:Lfh8;

    sget-object p1, Lxm9$d;->f:Lxm9$d;

    invoke-static {p1}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object p1

    iput-object p1, p0, Lxm9;->h:Lfh8;

    return-void
.end method
