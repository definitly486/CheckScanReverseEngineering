.class public final synthetic Ljp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljx6;


# direct methods
.method public synthetic constructor <init>(Ljx6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljp9;->a:Ljx6;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljp9;->a:Ljx6;

    invoke-static {p0, p1}, Lyads/bv3;->a(Lnl3;Ljava/lang/Object;)Lyads/zu3;

    move-result-object p0

    return-object p0
.end method
