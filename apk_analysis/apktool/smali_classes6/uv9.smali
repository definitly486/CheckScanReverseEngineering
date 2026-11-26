.class public final synthetic Luv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/g82;

.field public final synthetic c:Lyads/zo1;


# direct methods
.method public synthetic constructor <init>(Lyads/g82;Lyads/zo1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luv9;->b:Lyads/g82;

    iput-object p2, p0, Luv9;->c:Lyads/zo1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Luv9;->c:Lyads/zo1;

    check-cast p1, Lyads/bp1;

    iget-object p0, p0, Luv9;->b:Lyads/g82;

    invoke-static {p0, v0, p1}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;Lyads/bp1;)Lj59;

    move-result-object p0

    return-object p0
.end method
