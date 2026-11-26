.class public final Lyads/q4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/s4;


# direct methods
.method public constructor <init>(Lyads/s4;)V
    .locals 0

    iput-object p1, p0, Lyads/q4;->b:Lyads/s4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lyads/q4;->b:Lyads/s4;

    iget-object p1, p0, Lyads/s4;->a:Lyads/z75;

    iget-object p0, p0, Lyads/s4;->b:Ljava/lang/String;

    invoke-static {p0}, Lyads/z75;->a(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
