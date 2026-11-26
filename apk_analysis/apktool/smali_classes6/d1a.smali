.class public final synthetic Ld1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lyads/as2;

.field public final synthetic d:Lyads/as2;

.field public final synthetic e:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1a;->b:Landroid/widget/TextView;

    iput-object p2, p0, Ld1a;->c:Lyads/as2;

    iput-object p3, p0, Ld1a;->d:Lyads/as2;

    iput-object p4, p0, Ld1a;->e:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ld1a;->d:Lyads/as2;

    iget-object v1, p0, Ld1a;->e:Lyads/fs2;

    iget-object v2, p0, Ld1a;->b:Landroid/widget/TextView;

    iget-object p0, p0, Ld1a;->c:Lyads/as2;

    invoke-static {v2, p0, v0, v1, p1}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
