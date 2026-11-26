.class public interface abstract Loc6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loc6$a;
    }
.end annotation


# static fields
.field public static final a:Loc6$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Loc6$a;->a:Loc6$a;

    sput-object v0, Loc6;->a:Loc6$a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract b()Z
.end method

.method public abstract c(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAll()Ljava/util/LinkedHashMap;
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method
