.class public final synthetic Lzo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lyads/as2;

.field public final synthetic c:Lyads/tt;

.field public final synthetic d:Lyads/bt0;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lyads/as2;Lyads/tt;Lyads/bt0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lzo9;->b:Lyads/as2;

    iput-object p3, p0, Lzo9;->c:Lyads/tt;

    iput-object p4, p0, Lzo9;->d:Lyads/bt0;

    iput-object p1, p0, Lzo9;->e:Landroid/view/View;

    iput-object p5, p0, Lzo9;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v3, p0, Lzo9;->e:Landroid/view/View;

    iget-object v4, p0, Lzo9;->f:Ljava/util/List;

    iget-object v0, p0, Lzo9;->b:Lyads/as2;

    iget-object v1, p0, Lzo9;->c:Lyads/tt;

    iget-object v2, p0, Lzo9;->d:Lyads/bt0;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lyads/bt0;->b(Lyads/as2;Lyads/tt;Lyads/bt0;Landroid/view/View;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method
