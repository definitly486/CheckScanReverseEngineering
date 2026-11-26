.class public final synthetic Lwn9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tp0;


# instance fields
.field public final synthetic b:Lyads/ao2;

.field public final synthetic c:Lbm3;


# direct methods
.method public synthetic constructor <init>(Lyads/ao2;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwn9;->b:Lyads/ao2;

    iput-object p2, p0, Lwn9;->c:Lbm3;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lwn9;->b:Lyads/ao2;

    iget-object p0, p0, Lwn9;->c:Lbm3;

    invoke-static {v0, p0}, Lyads/ao2;->a(Lyads/ao2;Lbm3;)V

    return-void
.end method
