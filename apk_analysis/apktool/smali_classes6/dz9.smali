.class public final synthetic Ldz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/ii1;

.field public final synthetic c:Lyads/yi1;

.field public final synthetic d:Lyads/tt;

.field public final synthetic e:Lyads/zh1;


# direct methods
.method public synthetic constructor <init>(Lyads/ii1;Lyads/yi1;Lyads/tt;Lyads/zh1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldz9;->b:Lyads/ii1;

    iput-object p2, p0, Ldz9;->c:Lyads/yi1;

    iput-object p3, p0, Ldz9;->d:Lyads/tt;

    iput-object p4, p0, Ldz9;->e:Lyads/zh1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ldz9;->d:Lyads/tt;

    iget-object v1, p0, Ldz9;->e:Lyads/zh1;

    iget-object v2, p0, Ldz9;->b:Lyads/ii1;

    iget-object p0, p0, Ldz9;->c:Lyads/yi1;

    invoke-static {v2, p0, v0, v1, p1}, Lyads/ii1;->a(Lyads/ii1;Lyads/yi1;Lyads/tt;Lyads/zh1;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
