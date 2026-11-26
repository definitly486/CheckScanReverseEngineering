.class public final synthetic Lw7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/cy1;

.field public final synthetic c:Lyads/j71;

.field public final synthetic d:Lyads/tt;


# direct methods
.method public synthetic constructor <init>(Lyads/cy1;Lyads/j71;Lyads/tt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw7a;->b:Lyads/cy1;

    iput-object p2, p0, Lw7a;->c:Lyads/j71;

    iput-object p3, p0, Lw7a;->d:Lyads/tt;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw7a;->c:Lyads/j71;

    iget-object v1, p0, Lw7a;->d:Lyads/tt;

    iget-object p0, p0, Lw7a;->b:Lyads/cy1;

    invoke-static {p0, v0, v1, p1}, Lyads/rg1;->a(Lyads/cy1;Lyads/j71;Lyads/tt;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
