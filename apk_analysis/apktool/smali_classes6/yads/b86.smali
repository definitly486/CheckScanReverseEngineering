.class public final Lyads/b86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nb6;


# instance fields
.field public final a:Lyads/ja6;

.field public final b:Lyads/jf6;

.field public final c:Lyads/ya6;

.field public final d:Lyads/pf6;

.field public e:Z


# direct methods
.method public constructor <init>(Lyads/ja6;Lyads/of6;Lyads/jf6;Lyads/ya6;)V
    .locals 1

    new-instance v0, Lyads/pf6;

    invoke-direct {v0, p2}, Lyads/pf6;-><init>(Lyads/of6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/b86;->a:Lyads/ja6;

    iput-object p3, p0, Lyads/b86;->b:Lyads/jf6;

    iput-object p4, p0, Lyads/b86;->c:Lyads/ya6;

    iput-object v0, p0, Lyads/b86;->d:Lyads/pf6;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    iget-boolean p1, p0, Lyads/b86;->e:Z

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lyads/b86;->d:Lyads/pf6;

    invoke-virtual {p1}, Lyads/pf6;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/b86;->e:Z

    iget-object p1, p0, Lyads/b86;->b:Lyads/jf6;

    invoke-virtual {p1}, Lyads/jf6;->h()V

    iget-object p1, p0, Lyads/b86;->c:Lyads/ya6;

    iget-object p0, p0, Lyads/b86;->a:Lyads/ja6;

    invoke-interface {p1, p0}, Lyads/ya6;->f(Lyads/ja6;)V

    :cond_0
    return-void
.end method
