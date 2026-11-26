.class public final synthetic Le1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lyads/as2;

.field public final synthetic d:Lyads/as2;

.field public final synthetic e:Lyads/as2;

.field public final synthetic f:Lyads/as2;

.field public final synthetic g:Lyads/ef2;

.field public final synthetic h:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/ef2;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1a;->b:Landroid/widget/TextView;

    iput-object p2, p0, Le1a;->c:Lyads/as2;

    iput-object p3, p0, Le1a;->d:Lyads/as2;

    iput-object p4, p0, Le1a;->e:Lyads/as2;

    iput-object p5, p0, Le1a;->f:Lyads/as2;

    iput-object p6, p0, Le1a;->g:Lyads/ef2;

    iput-object p7, p0, Le1a;->h:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v5, p0, Le1a;->g:Lyads/ef2;

    iget-object v6, p0, Le1a;->h:Lyads/fs2;

    iget-object v0, p0, Le1a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Le1a;->c:Lyads/as2;

    iget-object v2, p0, Le1a;->d:Lyads/as2;

    iget-object v3, p0, Le1a;->e:Lyads/as2;

    iget-object v4, p0, Le1a;->f:Lyads/as2;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/ef2;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
