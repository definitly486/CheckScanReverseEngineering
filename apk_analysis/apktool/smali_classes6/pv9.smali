.class public final synthetic Lpv9;
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

    iput-object p1, p0, Lpv9;->b:Lyads/g82;

    iput-object p2, p0, Lpv9;->c:Lyads/zo1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lpv9;->b:Lyads/g82;

    iget-object p0, p0, Lpv9;->c:Lyads/zo1;

    invoke-static {v0, p0, p1}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;Z)Lj59;

    move-result-object p0

    return-object p0
.end method
