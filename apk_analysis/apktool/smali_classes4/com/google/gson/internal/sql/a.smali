.class public final Lcom/google/gson/internal/sql/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lt39;

.field public static final b:Lt39;

.field public static final c:Lt39;

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt39;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "java.sql.Date"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_0

    :catch_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/gson/internal/sql/a$a;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v3}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$a;-><init>(Ljava/lang/Class;)V

    new-instance v2, Lcom/google/gson/internal/sql/a$b;

    const-class v3, Ljava/sql/Timestamp;

    invoke-direct {v2, v3}, Lcom/google/gson/internal/bind/DefaultDateTypeAdapter$a;-><init>(Ljava/lang/Class;)V

    sget-object v2, Lcom/google/gson/internal/sql/SqlDateTypeAdapter;->b:Lt39;

    sput-object v2, Lcom/google/gson/internal/sql/a;->a:Lt39;

    sget-object v3, Lcom/google/gson/internal/sql/SqlTimeTypeAdapter;->b:Lt39;

    sput-object v3, Lcom/google/gson/internal/sql/a;->b:Lt39;

    sget-object v4, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;->b:Lt39;

    sput-object v4, Lcom/google/gson/internal/sql/a;->c:Lt39;

    const/4 v5, 0x3

    new-array v5, v5, [Lt39;

    aput-object v3, v5, v0

    aput-object v2, v5, v1

    const/4 v0, 0x2

    aput-object v4, v5, v0

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/sql/a;->d:Ljava/util/List;

    goto :goto_1

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/google/gson/internal/sql/a;->d:Ljava/util/List;

    :goto_1
    return-void
.end method
