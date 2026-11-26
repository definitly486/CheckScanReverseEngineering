.class public final synthetic Ldp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lyads/as2;

.field public final synthetic d:Lyads/tt;

.field public final synthetic e:Lyads/bt0;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lyads/as2;Lyads/tt;Lyads/bt0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldp9;->b:Landroid/view/View;

    iput-object p2, p0, Ldp9;->c:Lyads/as2;

    iput-object p3, p0, Ldp9;->d:Lyads/tt;

    iput-object p4, p0, Ldp9;->e:Lyads/bt0;

    iput-object p5, p0, Ldp9;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ldp9;->e:Lyads/bt0;

    iget-object v1, p0, Ldp9;->f:Ljava/util/List;

    iget-object v2, p0, Ldp9;->b:Landroid/view/View;

    iget-object v3, p0, Ldp9;->c:Lyads/as2;

    iget-object p0, p0, Ldp9;->d:Lyads/tt;

    invoke-static {v2, v3, p0, v0, v1}, Lyads/bt0;->a(Landroid/view/View;Lyads/as2;Lyads/tt;Lyads/bt0;Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0
.end method
