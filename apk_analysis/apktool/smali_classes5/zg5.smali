.class public final synthetic Lzg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Lch5;


# direct methods
.method public synthetic constructor <init>(Lch5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzg5;->b:Lch5;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lbm7;

    new-instance p1, Lah5;

    iget-object p0, p0, Lzg5;->b:Lch5;

    invoke-direct {p1, p0, p2}, Lah5;-><init>(Lch5;Ljava/lang/Object;)V

    return-object p1
.end method
