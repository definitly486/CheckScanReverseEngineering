.class public final synthetic Ljs9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/d14;

.field public final synthetic c:Lyads/ke3;

.field public final synthetic d:Lyads/h14;


# direct methods
.method public synthetic constructor <init>(Lyads/d14;Lyads/ke3;Lyads/h14;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljs9;->b:Lyads/d14;

    iput-object p2, p0, Ljs9;->c:Lyads/ke3;

    iput-object p3, p0, Ljs9;->d:Lyads/h14;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ljs9;->c:Lyads/ke3;

    iget-object v1, p0, Ljs9;->d:Lyads/h14;

    iget-object p0, p0, Ljs9;->b:Lyads/d14;

    invoke-virtual {p0, v0, v1}, Lyads/d14;->a(Lyads/ke3;Lyads/h14;)V

    return-void
.end method
