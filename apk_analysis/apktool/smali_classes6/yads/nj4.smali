.class public final Lyads/nj4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# instance fields
.field public final synthetic a:Lyads/b05;


# direct methods
.method public constructor <init>(Lyads/b05;)V
    .locals 0

    iput-object p1, p0, Lyads/nj4;->a:Lyads/b05;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyads/ac3;

    iget-object p0, p0, Lyads/nj4;->a:Lyads/b05;

    iget-object p2, p1, Lyads/ac3;->a:Ljava/lang/String;

    iget-object p1, p1, Lyads/ac3;->b:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lyads/b05;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
