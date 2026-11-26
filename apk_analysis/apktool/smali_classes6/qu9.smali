.class public final synthetic Lqu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/bw4;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lyads/bw4;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqu9;->b:Lyads/bw4;

    iput p2, p0, Lqu9;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lqu9;->c:I

    check-cast p1, Lyads/iw4;

    iget-object p0, p0, Lqu9;->b:Lyads/bw4;

    invoke-static {p0, v0, p1}, Lyads/eq2;->a(Lyads/bw4;ILyads/iw4;)V

    return-void
.end method
