.class public final synthetic Lp4a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ut5;


# instance fields
.field public final synthetic b:Lyads/ol0;

.field public final synthetic c:Lyads/vc0;


# direct methods
.method public synthetic constructor <init>(Lyads/ol0;Lyads/vc0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4a;->b:Lyads/ol0;

    iput-object p2, p0, Lp4a;->c:Lyads/vc0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp4a;->b:Lyads/ol0;

    iget-object p0, p0, Lp4a;->c:Lyads/vc0;

    invoke-virtual {v0, p0}, Lyads/ol0;->a(Lyads/vc0;)Lyads/g14;

    move-result-object p0

    return-object p0
.end method
