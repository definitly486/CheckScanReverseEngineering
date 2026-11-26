.class public final synthetic Lb0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/ao2;

.field public final synthetic c:Lnl3;

.field public final synthetic d:Lyads/jv1;

.field public final synthetic e:I

.field public final synthetic f:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lyads/ao2;Lnl3;Lyads/jv1;ILnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0a;->b:Lyads/ao2;

    iput-object p2, p0, Lb0a;->c:Lnl3;

    iput-object p3, p0, Lb0a;->d:Lyads/jv1;

    iput p4, p0, Lb0a;->e:I

    iput-object p5, p0, Lb0a;->f:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lb0a;->f:Lnl3;

    move-object v5, p1

    check-cast v5, Lyads/hd3;

    iget-object v0, p0, Lb0a;->b:Lyads/ao2;

    iget-object v1, p0, Lb0a;->c:Lnl3;

    iget-object v2, p0, Lb0a;->d:Lyads/jv1;

    iget v3, p0, Lb0a;->e:I

    invoke-static/range {v0 .. v5}, Lyads/jv1;->a(Lyads/ao2;Lnl3;Lyads/jv1;ILnl3;Lyads/hd3;)Lj59;

    move-result-object p0

    return-object p0
.end method
