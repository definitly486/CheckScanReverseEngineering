.class public abstract Lgx8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgx8$i;,
        Lgx8$d;,
        Lgx8$g;,
        Lgx8$f;,
        Lgx8$c;,
        Lgx8$a;,
        Lgx8$b;,
        Lgx8$j;,
        Lgx8$e;,
        Lgx8$h;
    }
.end annotation


# instance fields
.field public final a:Lgx8$i;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lgx8$i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lgx8;->c:I

    iput-object p1, p0, Lgx8;->a:Lgx8$i;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object p0, p0, Lgx8;->a:Lgx8$i;

    sget-object v0, Lgx8$i;->Comment:Lgx8$i;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Z
    .locals 1

    iget-object p0, p0, Lgx8;->a:Lgx8$i;

    sget-object v0, Lgx8$i;->Doctype:Lgx8$i;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()Z
    .locals 1

    iget-object p0, p0, Lgx8;->a:Lgx8$i;

    sget-object v0, Lgx8$i;->EOF:Lgx8$i;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Z
    .locals 1

    iget-object p0, p0, Lgx8;->a:Lgx8$i;

    sget-object v0, Lgx8$i;->EndTag:Lgx8$i;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 1

    iget-object p0, p0, Lgx8;->a:Lgx8$i;

    sget-object v0, Lgx8$i;->StartTag:Lgx8$i;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public f()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lgx8;->b:I

    iput v0, p0, Lgx8;->c:I

    return-void
.end method
