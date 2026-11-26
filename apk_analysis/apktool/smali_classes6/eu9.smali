.class public final synthetic Leu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/e71;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lyads/e71;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu9;->b:Lyads/e71;

    iput p2, p0, Leu9;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Leu9;->c:I

    check-cast p1, Lyads/ri2;

    iget-object p0, p0, Leu9;->b:Lyads/e71;

    invoke-static {p0, v0, p1}, Lyads/e71;->a(Lyads/e71;ILyads/ri2;)Lj59;

    move-result-object p0

    return-object p0
.end method
