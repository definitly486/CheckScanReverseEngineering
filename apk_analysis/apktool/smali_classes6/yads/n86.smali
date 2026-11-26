.class public final Lyads/n86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nb6;


# instance fields
.field public final a:Lyads/jf6;

.field public final b:Lyads/eb6;

.field public final c:Lyads/pf6;

.field public d:Z


# direct methods
.method public constructor <init>(Lyads/of6;Lyads/jf6;Lyads/eb6;)V
    .locals 1

    new-instance v0, Lyads/pf6;

    invoke-direct {v0, p1}, Lyads/pf6;-><init>(Lyads/of6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/n86;->a:Lyads/jf6;

    iput-object p3, p0, Lyads/n86;->b:Lyads/eb6;

    iput-object v0, p0, Lyads/n86;->c:Lyads/pf6;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 2

    iget-boolean v0, p0, Lyads/n86;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-lez p3, :cond_0

    iget-object p3, p0, Lyads/n86;->c:Lyads/pf6;

    invoke-virtual {p3}, Lyads/pf6;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    iput-boolean p3, p0, Lyads/n86;->d:Z

    iget-object p3, p0, Lyads/n86;->a:Lyads/jf6;

    iget-object p0, p0, Lyads/n86;->b:Lyads/eb6;

    invoke-interface {p0}, Lyads/eb6;->getVolume()F

    move-result p0

    iget-object p3, p3, Lyads/jf6;->a:Lyads/k50;

    invoke-virtual {p3, p1, p2, p0}, Lyads/k50;->a(JF)V

    :cond_0
    return-void
.end method
