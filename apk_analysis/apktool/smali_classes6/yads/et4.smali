.class public interface abstract Lyads/et4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/et4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvu9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/et4;->a:Lyads/et4;

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 0

    .line 4
    sget p0, Lyads/rv3;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public abstract b(Ljava/lang/Exception;)V
.end method
