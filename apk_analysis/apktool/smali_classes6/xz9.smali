.class public final synthetic Lxz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lsv9;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lsv9;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxz9;->b:Lsv9;

    iput p2, p0, Lxz9;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lxz9;->b:Lsv9;

    iget p0, p0, Lxz9;->c:I

    invoke-static {v0, p0, p1}, Lyads/jk1;->a(Lnl3;IZ)Lj59;

    move-result-object p0

    return-object p0
.end method
