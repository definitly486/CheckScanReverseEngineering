.class public final synthetic Ltt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lst;


# direct methods
.method public synthetic constructor <init>(Lst;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltt;->b:Lst;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Ltt;->b:Lst;

    invoke-static {p0, p1, p2}, Landroidx/camera/video/internal/config/AudioConfigUtil;->a(Lst;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
