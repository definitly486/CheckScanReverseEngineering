.class public final synthetic Lqv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/g82;

.field public final synthetic c:Lyads/zo1;

.field public final synthetic d:Lyads/tt;

.field public final synthetic e:Lyads/b82;


# direct methods
.method public synthetic constructor <init>(Lyads/g82;Lyads/zo1;Lyads/tt;Lyads/b82;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqv9;->b:Lyads/g82;

    iput-object p2, p0, Lqv9;->c:Lyads/zo1;

    iput-object p3, p0, Lqv9;->d:Lyads/tt;

    iput-object p4, p0, Lqv9;->e:Lyads/b82;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lqv9;->d:Lyads/tt;

    iget-object v1, p0, Lqv9;->e:Lyads/b82;

    iget-object v2, p0, Lqv9;->b:Lyads/g82;

    iget-object p0, p0, Lqv9;->c:Lyads/zo1;

    invoke-static {v2, p0, v0, v1, p1}, Lyads/g82;->b(Lyads/g82;Lyads/zo1;Lyads/tt;Lyads/b82;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
