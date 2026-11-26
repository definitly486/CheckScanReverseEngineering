.class public final synthetic Ltz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/ao2;


# direct methods
.method public synthetic constructor <init>(Lyads/ao2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltz9;->b:Lyads/ao2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    check-cast p2, Lll3;

    iget-object p0, p0, Ltz9;->b:Lyads/ao2;

    invoke-static {p0, p1, p2}, Lyads/jk1;->a(Lyads/ao2;Ljava/lang/Exception;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method
