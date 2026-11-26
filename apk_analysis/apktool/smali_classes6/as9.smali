.class public final synthetic Las9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/et1;

.field public final synthetic c:Lyads/j71;

.field public final synthetic d:Lyads/tt;


# direct methods
.method public synthetic constructor <init>(Lyads/et1;Lyads/j71;Lyads/tt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Las9;->b:Lyads/et1;

    iput-object p2, p0, Las9;->c:Lyads/j71;

    iput-object p3, p0, Las9;->d:Lyads/tt;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Las9;->c:Lyads/j71;

    iget-object v1, p0, Las9;->d:Lyads/tt;

    iget-object p0, p0, Las9;->b:Lyads/et1;

    invoke-static {p0, v0, v1, p1}, Lyads/cs1;->a(Lyads/et1;Lyads/j71;Lyads/tt;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
