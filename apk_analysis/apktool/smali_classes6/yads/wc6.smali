.class public final Lyads/wc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lyads/ot3;

.field public final b:Lyads/h00;

.field public final c:Lyads/p90;


# direct methods
.method public constructor <init>(Lyads/ot3;Lyads/h00;Lyads/p90;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wc6;->a:Lyads/ot3;

    iput-object p2, p0, Lyads/wc6;->b:Lyads/h00;

    iput-object p3, p0, Lyads/wc6;->c:Lyads/p90;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lyads/wc6;->c:Lyads/p90;

    new-instance v1, Lyads/ot3;

    iget-object v2, p0, Lyads/wc6;->a:Lyads/ot3;

    move-object v3, v2

    iget-object v2, v3, Lyads/ot3;->a:Ljava/util/ArrayList;

    move-object v4, v3

    iget-object v3, v4, Lyads/ot3;->b:Lyads/mt2;

    move-object v5, v4

    iget-object v4, v5, Lyads/ot3;->c:Ljava/util/List;

    iget-object v0, v0, Lyads/p90;->f:Ljava/lang/String;

    iget-wide v6, v5, Lyads/ot3;->e:J

    const/4 v8, 0x0

    move-object v5, v0

    invoke-direct/range {v1 .. v8}, Lyads/ot3;-><init>(Ljava/util/ArrayList;Lyads/mt2;Ljava/util/List;Ljava/lang/String;JZ)V

    iget-object p0, p0, Lyads/wc6;->b:Lyads/h00;

    iget-object v4, p0, Lyads/h00;->c:Lyads/dh4;

    iget-object v0, v4, Lyads/dh4;->a:Lyads/i00;

    iget-object v2, p0, Lyads/h00;->a:Lyads/ak;

    iget-object v3, p0, Lyads/h00;->b:Lyads/a4;

    iget-object v5, p0, Lyads/h00;->d:Lyads/l65;

    iget-object v7, p0, Lyads/h00;->e:Lyads/we3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v1

    new-instance v1, Lyads/kf4;

    invoke-direct/range {v1 .. v7}, Lyads/kf4;-><init>(Lyads/ak;Lyads/a4;Lyads/dh4;Lyads/l65;Lyads/ot3;Lyads/tz2;)V

    invoke-virtual {v1, p1}, Lyads/kf4;->onClick(Landroid/view/View;)V

    return-void
.end method
