.class public final synthetic Lzy9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/ig6;


# direct methods
.method public synthetic constructor <init>(Lyads/ig6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzy9;->b:Lyads/ig6;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyads/sh0;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lzy9;->b:Lyads/ig6;

    invoke-static {p0, p1, p2}, Lyads/ig6;->a(Lyads/ig6;Lyads/sh0;Z)Lj59;

    move-result-object p0

    return-object p0
.end method
