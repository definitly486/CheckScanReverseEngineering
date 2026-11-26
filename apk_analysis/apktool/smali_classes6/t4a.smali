.class public final synthetic Lt4a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ut5;


# instance fields
.field public final synthetic b:Ljava/lang/Class;

.field public final synthetic c:Lyads/vc0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lyads/vc0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4a;->b:Ljava/lang/Class;

    iput-object p2, p0, Lt4a;->c:Lyads/vc0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lt4a;->b:Ljava/lang/Class;

    iget-object p0, p0, Lt4a;->c:Lyads/vc0;

    invoke-static {v0, p0}, Lyads/ol0;->a(Ljava/lang/Class;Lyads/vc0;)Lyads/g14;

    move-result-object p0

    return-object p0
.end method
