.class public final synthetic Lct9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/xu5;


# direct methods
.method public synthetic constructor <init>(Lyads/xu5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct9;->b:Lyads/xu5;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lct9;->b:Lyads/xu5;

    check-cast p1, Lyads/tf1;

    invoke-static {p0, p1}, Lyads/d62;->a(Lyads/xu5;Lyads/tf1;)Lj59;

    move-result-object p0

    return-object p0
.end method
