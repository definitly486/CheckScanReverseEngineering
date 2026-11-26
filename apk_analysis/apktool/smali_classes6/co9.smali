.class public final synthetic Lco9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tp0;


# instance fields
.field public final synthetic b:Lyads/b76;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lyads/b76;Ljava/lang/String;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco9;->b:Lyads/b76;

    iput-object p2, p0, Lco9;->c:Ljava/lang/String;

    iput-object p3, p0, Lco9;->d:Lnl3;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lco9;->c:Ljava/lang/String;

    iget-object v1, p0, Lco9;->d:Lnl3;

    iget-object p0, p0, Lco9;->b:Lyads/b76;

    invoke-static {p0, v0, v1}, Lyads/b76;->a(Lyads/b76;Ljava/lang/String;Lnl3;)V

    return-void
.end method
