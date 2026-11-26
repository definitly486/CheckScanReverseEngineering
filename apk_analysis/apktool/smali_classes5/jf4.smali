.class public final Ljf4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lem1$a;


# instance fields
.field public final synthetic a:Lif4$c;


# direct methods
.method public constructor <init>(Lif4$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljf4;->a:Lif4$c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Ljf4;->a:Lif4$c;

    iget-object p0, p0, Lif4$c;->a:Llv5;

    sget-object v0, Lh88;->m:Lh88;

    const-string v1, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    invoke-virtual {p0, v0}, Llv5;->p(Lh88;)V

    return-void
.end method
