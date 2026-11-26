.class public final synthetic Lc8a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/y6;

.field public final synthetic c:Lyads/s25;


# direct methods
.method public synthetic constructor <init>(Lyads/y6;Lyads/s25;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8a;->b:Lyads/y6;

    iput-object p2, p0, Lc8a;->c:Lyads/s25;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc8a;->b:Lyads/y6;

    iget-object p0, p0, Lc8a;->c:Lyads/s25;

    invoke-static {v0, p0}, Lyads/s25;->a(Lyads/y6;Lyads/s25;)V

    return-void
.end method
