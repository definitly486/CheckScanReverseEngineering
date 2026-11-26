.class public final synthetic Lov9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/g82;

.field public final synthetic c:Lyads/zo1;

.field public final synthetic d:Lyads/tt;

.field public final synthetic e:Lyads/b82;

.field public final synthetic f:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Lyads/b82;Lyads/fs2;Lyads/g82;Lyads/tt;Lyads/zo1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lov9;->b:Lyads/g82;

    iput-object p5, p0, Lov9;->c:Lyads/zo1;

    iput-object p4, p0, Lov9;->d:Lyads/tt;

    iput-object p1, p0, Lov9;->e:Lyads/b82;

    iput-object p2, p0, Lov9;->f:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lov9;->e:Lyads/b82;

    iget-object v4, p0, Lov9;->f:Lyads/fs2;

    iget-object v0, p0, Lov9;->b:Lyads/g82;

    iget-object v1, p0, Lov9;->c:Lyads/zo1;

    iget-object v2, p0, Lov9;->d:Lyads/tt;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;Lyads/tt;Lyads/b82;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
