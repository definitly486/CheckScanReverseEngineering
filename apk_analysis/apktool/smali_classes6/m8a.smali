.class public final synthetic Lm8a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/so1;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lyads/p41;

.field public final synthetic e:Lyads/fs2;

.field public final synthetic f:Lyads/ao2;


# direct methods
.method public synthetic constructor <init>(Lyads/so1;Landroid/view/View;Lyads/p41;Lyads/fs2;Lyads/ao2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm8a;->b:Lyads/so1;

    iput-object p2, p0, Lm8a;->c:Landroid/view/View;

    iput-object p3, p0, Lm8a;->d:Lyads/p41;

    iput-object p4, p0, Lm8a;->e:Lyads/fs2;

    iput-object p5, p0, Lm8a;->f:Lyads/ao2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lm8a;->e:Lyads/fs2;

    iget-object v4, p0, Lm8a;->f:Lyads/ao2;

    iget-object v0, p0, Lm8a;->b:Lyads/so1;

    iget-object v1, p0, Lm8a;->c:Landroid/view/View;

    iget-object v2, p0, Lm8a;->d:Lyads/p41;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lyads/so1;->a(Lyads/so1;Landroid/view/View;Lyads/p41;Lyads/fs2;Lyads/ao2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
