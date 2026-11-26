.class public final synthetic Luo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/bo6;

.field public final synthetic c:Lyads/fm6;


# direct methods
.method public synthetic constructor <init>(Lyads/bo6;Lyads/fm6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luo9;->b:Lyads/bo6;

    iput-object p2, p0, Luo9;->c:Lyads/fm6;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Luo9;->b:Lyads/bo6;

    iget-object p0, p0, Luo9;->c:Lyads/fm6;

    invoke-static {v0, p0}, Lyads/bo6;->a(Lyads/bo6;Lyads/fm6;)Lj59;

    move-result-object p0

    return-object p0
.end method
