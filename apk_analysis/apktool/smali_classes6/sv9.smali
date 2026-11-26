.class public final synthetic Lsv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lyads/fs2;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lyads/jk1;Lyads/bn1;Lyads/vq0;Lyads/fs2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lsv9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsv9;->d:Ljava/lang/Object;

    iput-object p1, p0, Lsv9;->e:Ljava/lang/Object;

    iput-object p3, p0, Lsv9;->f:Landroid/widget/TextView;

    iput-object p4, p0, Lsv9;->g:Ljava/lang/Object;

    iput-object p5, p0, Lsv9;->c:Lyads/fs2;

    return-void
.end method

.method public synthetic constructor <init>(Lyads/b82;Lyads/fs2;Lyads/g82;Lyads/tt;Lyads/zo1;)V
    .locals 1

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lsv9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsv9;->d:Ljava/lang/Object;

    iput-object p2, p0, Lsv9;->c:Lyads/fs2;

    iput-object p3, p0, Lsv9;->e:Ljava/lang/Object;

    iput-object p5, p0, Lsv9;->f:Landroid/widget/TextView;

    iput-object p4, p0, Lsv9;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lsv9;->b:I

    iget-object v1, p0, Lsv9;->g:Ljava/lang/Object;

    iget-object v2, p0, Lsv9;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lsv9;->e:Ljava/lang/Object;

    iget-object v4, p0, Lsv9;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v5, v4

    check-cast v5, Lyads/jk1;

    move-object v6, v3

    check-cast v6, Ljava/util/ArrayList;

    move-object v7, v2

    check-cast v7, Lyads/bn1;

    move-object v8, v1

    check-cast v8, Lyads/vq0;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v9, p0, Lsv9;->c:Lyads/fs2;

    invoke-static/range {v5 .. v10}, Lyads/jk1;->a(Lyads/jk1;Ljava/util/List;Lyads/bn1;Lyads/vq0;Lyads/fs2;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v0, v4

    check-cast v0, Lyads/b82;

    check-cast v3, Lyads/g82;

    check-cast v2, Lyads/zo1;

    move-object v4, v1

    check-cast v4, Lyads/tt;

    iget-object v1, p0, Lsv9;->c:Lyads/fs2;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lyads/g82;->a(Lyads/b82;Lyads/fs2;Lyads/g82;Lyads/zo1;Lyads/tt;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
