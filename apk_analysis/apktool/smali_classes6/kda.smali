.class public final synthetic Lkda;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/u13;


# direct methods
.method public synthetic constructor <init>(Lyads/u13;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkda;->b:Lyads/u13;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyads/xo2;

    check-cast p2, Lyads/xo2;

    iget-object p0, p0, Lkda;->b:Lyads/u13;

    invoke-static {p0, p1, p2}, Lyads/u13;->a(Lyads/u13;Lyads/xo2;Lyads/xo2;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
