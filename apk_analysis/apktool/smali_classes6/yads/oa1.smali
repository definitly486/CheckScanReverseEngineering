.class public interface abstract Lyads/oa1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/na1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/na1;

    invoke-direct {v0}, Lyads/na1;-><init>()V

    sput-object v0, Lyads/oa1;->a:Lyads/na1;

    return-void
.end method


# virtual methods
.method public abstract a(Lyads/ka1;Lyads/vq0;Lyads/fs2;Lyads/n32;)Landroid/view/View;
.end method

.method public a()Lyads/aw1;
    .locals 0

    sget-object p0, Lyads/aw1;->a:Lyads/zv1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lyads/zv1;->b:Lyads/aw1;

    return-object p0
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method
