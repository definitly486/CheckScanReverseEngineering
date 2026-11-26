.class public final synthetic Lbq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/e62;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lyads/e62;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbq9;->b:Lyads/e62;

    iput p2, p0, Lbq9;->c:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbq9;->b:Lyads/e62;

    iget p0, p0, Lbq9;->c:I

    invoke-static {v0, p0}, Lyads/c62;->a(Lyads/e62;I)Lj59;

    move-result-object p0

    return-object p0
.end method
