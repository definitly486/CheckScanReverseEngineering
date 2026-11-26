.class public final Lyads/b10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/w0;


# instance fields
.field public final a:Lyads/l00;

.field public final b:Lyads/lf4;


# direct methods
.method public constructor <init>(Lyads/l00;Lyads/lf4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/b10;->a:Lyads/l00;

    iput-object p2, p0, Lyads/b10;->b:Lyads/lf4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/u0;Lyads/c1;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lyads/b10;->b:Lyads/lf4;

    iget-object p1, p1, Lyads/lf4;->a:Lyads/nf4;

    invoke-virtual {p1}, Lyads/nf4;->a()V

    iget-object p0, p0, Lyads/b10;->a:Lyads/l00;

    sget-object p1, Lyads/e75;->s:Lyads/e75;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2}, Lyads/l00;->a(Lyads/e75;Ljava/util/Map;)Lyads/g75;

    move-result-object p1

    iget-object p0, p0, Lyads/l00;->d:Lyads/q84;

    invoke-virtual {p0, p1}, Lyads/q84;->a(Lyads/g75;)V

    new-instance p0, Lyads/m83;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lyads/m83;-><init>(Z)V

    return-object p0
.end method
