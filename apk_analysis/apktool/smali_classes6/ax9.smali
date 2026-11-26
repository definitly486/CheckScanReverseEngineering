.class public final synthetic Lax9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ln07;

.field public final synthetic c:Lyads/xc3;


# direct methods
.method public synthetic constructor <init>(Ln07;Lyads/xc3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lax9;->b:Ln07;

    iput-object p2, p0, Lax9;->c:Lyads/xc3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lax9;->b:Ln07;

    iget-object p0, p0, Lax9;->c:Lyads/xc3;

    invoke-static {v0, p0}, Lyads/hc3;->a(Ln07;Lyads/xc3;)Lj59;

    move-result-object p0

    return-object p0
.end method
