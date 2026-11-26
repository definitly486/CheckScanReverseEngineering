.class public final Lyads/cj5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/gj5;


# direct methods
.method public constructor <init>(Lyads/gj5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/cj5;->a:Lyads/gj5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Z)V
    .locals 1

    sget-object v0, Lyads/oa3;->D:Lyads/oa3;

    invoke-static {p1, v0}, Lyads/v83;->b(Ljava/util/Map;Lyads/oa3;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lyads/oa3;->a()Ljava/lang/String;

    iget-object p0, p0, Lyads/cj5;->a:Lyads/gj5;

    invoke-virtual {p0, p1}, Lyads/gj5;->a(Ljava/lang/String;)V

    return-void
.end method
